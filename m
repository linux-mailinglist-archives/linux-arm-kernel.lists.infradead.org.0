Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E42FB181011
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Mar 2020 06:32:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=GMJ10aikAlX5RAzWkP9fPRt8FAg2s/hTsR2GnIzxJWY=; b=fHl1j0Q9M9/Nhg
	3drDFllLMQXWT1mu/PZb1CCQSURLZ5oMRdM/z5Adfzay1nNu1ajUquvaRhIgLSDV41/m/vowzKdUx
	TTpbrhmaY5YK3JTdycXyMgLsVTC1s/uCtOWOVJ1vFvpIeFjNN2x7aSaHcWPCL7v3zQFl2J6YdaaTS
	pobDxZfS3M37RGAR5MrUihKkNutVsJUg4stoNzLOJNM3Xnb8lkdeqZVKNTvEzvdKcXSGnirn0Erql
	7axdArEmJjEgAgTJZaN1KaQWGNUdvTY2HtGz7Dmn5xunhyNHU6fHx5j/Fawg/ZtQVNWXBqDHZ3OVj
	ISMZMKKQB5yE36Au8b8g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jBtyB-0000Gc-Hp; Wed, 11 Mar 2020 05:31:52 +0000
Received: from mail-ot1-x344.google.com ([2607:f8b0:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jBtxr-0000GA-Sr
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Mar 2020 05:31:33 +0000
Received: by mail-ot1-x344.google.com with SMTP id j16so721854otl.1
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 10 Mar 2020 22:31:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=mRaU0AqIThL9bVRbu+a3uE7ULIqF+zwOfxIVLuqdJ+E=;
 b=NtE3RCy7mnABRhFQlxK7AY6bPEJM4+yH1iCZhlEN6AmfDHifT0veCYRVYxUES13rYk
 LNMHvBu0rpvTqdPmZIPc2vPhfWyp1CdyjE6hLLjiT93fxCpf9ju6tv0c1/tdzWV7Xa8+
 K/Xf56eBn1Nz9l9yepM3HJi+eRl51tpuAJhBoBOYp0zbVUQhmsNn02+9u28PEMVkE+Mv
 wLDQnlX7k4zyzmjwD3yXLDdiVuaa5dd0WGsxzEv0ZWIduEc/CiOGGxxdLIOuxnZq+lqW
 2b8+afiBXLeWUuOIK4vqcKVoKNmKXy4CZFXImK+Tg/qnPtFquaKZnAFmbkE+6LPYit5u
 yloQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=mRaU0AqIThL9bVRbu+a3uE7ULIqF+zwOfxIVLuqdJ+E=;
 b=oRBMHMwug1h/TFkjlp/rbvdCr06XI/SpN0ws/JyS8U4Ncru9ACKiHdvo2c7MoWEb5E
 QvGAl27nZlfGplwgGFdIMOe1hAYx0XtJgcGsaC6j7lF3u9x/zjReTEFL75Gzss75D9+r
 L8dTqNEqiddPoYp/zaqw7ixVD8wTzTSihBNGPY2G/+6fRoVXVYFhpufN7qctwFtvnDWv
 yV60vHO7mWj2qlb971qZfg/EzGMgs1oK4fQMDJdDphrabhWsm4SNl+0hiBwCMGjXzAr+
 OS4ACa+0UGb/Hpvlt2HjMbssuPJfI07qT4ufp3bQ3P54pIMHrbW//2CNK0VuGbZ//Czp
 wyGA==
X-Gm-Message-State: ANhLgQ0VzkNu+5fyTaXzggHvwhQf1GYvqVk3sP3Q2ZTFcwUaJ4Q+qtIJ
 67wqiqrojbl6ftX6rZlHDtw=
X-Google-Smtp-Source: ADFU+vvs2EpekK1XhQaOxK2H/diS+7ZScfO4M0urCZbqCYmSLIA7g/iGRL/1x2OE+pmtzyFhOSV3Ng==
X-Received: by 2002:a9d:3b6:: with SMTP id f51mr1050716otf.255.1583904688182; 
 Tue, 10 Mar 2020 22:31:28 -0700 (PDT)
Received: from ubuntu-m2-xlarge-x86 ([2604:1380:4111:8b00::1])
 by smtp.gmail.com with ESMTPSA id m124sm776958oib.46.2020.03.10.22.31.27
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 10 Mar 2020 22:31:27 -0700 (PDT)
Date: Tue, 10 Mar 2020 22:31:26 -0700
From: Nathan Chancellor <natechancellor@gmail.com>
To: afzal mohammed <afzal.mohd.ma@gmail.com>
Subject: Re: [PATCH v4] MIPS: Replace setup_irq() by request_irq()
Message-ID: <20200311053126.GA48442@ubuntu-m2-xlarge-x86>
References: <20200304203144.GA4323@alpha.franken.de>
 <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200305115759.3186-1-afzal.mohd.ma@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200310_223131_961782_95F2AAC5 
X-CRM114-Status: GOOD (  10.87  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [natechancellor[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Paul Burton <paulburton@kernel.org>, linux-mips@vger.kernel.org,
 Ralf Baechle <ralf@linux-mips.org>, linux-kernel@vger.kernel.org,
 Florian Fainelli <f.fainelli@gmail.com>, bcm-kernel-feedback-list@broadcom.com,
 Jiaxun Yang <jiaxun.yang@flygoat.com>,
 "Maciej W. Rozycki" <macro@linux-mips.org>, John Crispin <john@phrozen.org>,
 Huacai Chen <chenhc@lemote.com>, Keguang Zhang <keguang.zhang@gmail.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Mar 05, 2020 at 05:27:53PM +0530, afzal mohammed wrote:
> request_irq() is preferred over setup_irq(). Invocations of setup_irq()
> occur after memory allocators are ready.
> 
> Per tglx[1], setup_irq() existed in olden days when allocators were not
> ready by the time early interrupts were initialized.
> 
> Hence replace setup_irq() by request_irq().
> 
> remove_irq() has been replaced by free_irq() as well.
> 
> There were build error's during previous version, couple of which was
> reported by kbuild test robot <lkp@intel.com> of which one was reported
> by Thomas Bogendoerfer <tsbogend@alpha.franken.de> as well. There were a
> few more issues including build errors, those also have been fixed.
> 
> [1] https://lkml.kernel.org/r/alpine.DEB.2.20.1710191609480.1971@nanos
> 
> Signed-off-by: afzal mohammed <afzal.mohd.ma@gmail.com>

This patch regresses booting malta_defconfig with both GCC and clang
with this rootfs and QEMU 4.2.0:

https://github.com/ClangBuiltLinux/continuous-integration/blob/a85e3e44c2570847e22ad8f92f317c2b007c4517/images/mipsel/rootfs.cpio

$ timeout 2m qemu-system-mipsel -machine malta -cpu 24Kf -initrd rootfs.cpio -kernel vmlinux -m 512m -display none -serial mon:stdio

just hangs. I have not done further debugging past the initial bisect.

Cheers,
Nathan

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
