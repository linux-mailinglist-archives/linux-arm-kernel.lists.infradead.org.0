Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BEDFDF082
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 21 Oct 2019 16:52:52 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3imZN1+1PhD8QVrFVUBHo35xesKsJkwWKc/PBkNNtkc=; b=r7Dv6ipo265d2+
	K0Q9qUq6kOARtpi27QMkxCnGJ0OGoBxtexG6Vt0dc8hyLRirExiT4bF+6UYLUxqa4kx1wyj1RtuKa
	IHbjNUU7X1JrQow6+ZfAdEsqhTCVNLl62Mw8OBlfHPKmUn02nJ4NIr0iadxZgYCxoGzJanuL5ti2U
	qoxpo5hQ+NdKt0SfPOOKN19zotp2e6nI6HjlRilySNg0dBVb14UY/cdCEmGnYrHMU6MyMDUf7GlcN
	dbg/qyfGBW3QLDzVg3B/AEBA13gdutMkAp0pX1FSbOTIWXeL6EJXiQxsCUJCdbfue56KfExO7uRUB
	/8kMSAhVDbyXPKYIuNqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iMZ3B-0005Bt-Su; Mon, 21 Oct 2019 14:52:49 +0000
Received: from galois.linutronix.de ([2a0a:51c0:0:12e:550::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iMZ31-0005BV-22
 for linux-arm-kernel@lists.infradead.org; Mon, 21 Oct 2019 14:52:40 +0000
Received: from [5.158.153.52] (helo=nanos.tec.linutronix.de)
 by Galois.linutronix.de with esmtpsa (TLS1.2:DHE_RSA_AES_256_CBC_SHA256:256)
 (Exim 4.80) (envelope-from <tglx@linutronix.de>)
 id 1iMZ2r-0003zO-BK; Mon, 21 Oct 2019 16:52:29 +0200
Date: Mon, 21 Oct 2019 16:52:28 +0200 (CEST)
From: Thomas Gleixner <tglx@linutronix.de>
To: Huacai Chen <chenhc@lemote.com>
Subject: Re: [PATCH 110/110] lib/vdso: Improve do_hres() and update vdso data
 unconditionally
In-Reply-To: <1571662320-1280-1-git-send-email-chenhc@lemote.com>
Message-ID: <alpine.DEB.2.21.1910211648200.1904@nanos.tec.linutronix.de>
References: <1571662320-1280-1-git-send-email-chenhc@lemote.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191021_075239_242483_3C8F4F69 
X-CRM114-Status: UNSURE (   9.38  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [2a0a:51c0:0:12e:550:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Arnd Bergmann <arnd@arndb.de>, chenhuacai@gmail.com,
 linux-kernel@vger.kernel.org, stable@vger.kernel.org,
 linux-mips@vger.kernel.org, Paul Burton <paul.burton@mips.com>,
 Andy Lutomirski <luto@kernel.org>,
 Vincenzo Frascino <vincenzo.frascino@arm.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 21 Oct 2019, Huacai Chen wrote:
> @@ -50,7 +50,7 @@ static int do_hres(const struct vdso_data *vd, clockid_t clk,
>  		cycles = __arch_get_hw_counter(vd->clock_mode);
>  		ns = vdso_ts->nsec;
>  		last = vd->cycle_last;
> -		if (unlikely((s64)cycles < 0))
> +		if (unlikely(cycles == U64_MAX))
>  			return -1;

That used to create worse code than the weird (s64) type cast which has the
same effect. Did you double check that there is no change?

Thanks,

	tglx

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
