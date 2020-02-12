Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1450715B0EB
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 12 Feb 2020 20:24:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4ydRKY526VGYM+bCBUXMjuAKJ4yR3dLvQA0z8Ye+DqM=; b=d1hzHXQ7DeskJy
	nXCNxCn1QhLLXObitmUPvWbMbBcwpS538nEIRfvrns3Kl8WT5qOKvaCnbV66kjbd/PoKMSfAo48dB
	Ccpx9BVKBK8T6M3OJzc+wJcQ5GdjQxJjx95w6ebA9Rm8AssFqMbeBwH9kgq09WgUuGMMbxYS1RDha
	gtYxmJWHJzqVEmDGNk281kogVDv98Ob0T0+rfKV3ebsG4NQUSOMsuJzBg4V32Ju3Esh8Ho9YYe5N9
	3K6QS+wEixMm1cTxir/WFjMeoWhLOhcJhnx/TPaFEsd0SIYMsEZ/8XEPB2HoidTNI4VWfMlj14SaD
	/MJjUtzwV5JMinuSpCmQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j1xcB-0005wK-Ux; Wed, 12 Feb 2020 19:24:03 +0000
Received: from mail-wm1-x344.google.com ([2a00:1450:4864:20::344])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j1xc4-0005vz-QH
 for linux-arm-kernel@lists.infradead.org; Wed, 12 Feb 2020 19:23:58 +0000
Received: by mail-wm1-x344.google.com with SMTP id p9so3619248wmc.2
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 12 Feb 2020 11:23:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=BxOEBk0OKDVQaQ1jykEnv7FtZWP6/XV6yKSqEx4izqY=;
 b=LC9x1oP7D6Kv4xPOS5y9ufKAAfofqmoqi2Fc2HzhKWm75lOMR/KkGAYNehp3KWwtke
 TmnfD2efFR2SBoKaRvOzON/xuA5UDae6/EIOVBH7suBLs8IA4UrBQVtu6pAr0LPfZk4Q
 B1Pca6eJHx+BiXpgG4N08+bSVW4KlFCgWuOM2ww+hn5nyyGUR2ktv8YTtp1wo7VJLXfM
 df+gmLChwHixqaHh62sSoLXjiwhpb3VvMguKTI00zlcMfojgQRk+NIo1qcoEv8MAg3su
 1aAE8KK5rkgj0gvuhSXlwtj9F+cRQB1/hzRmaaolPN2039H6cl0CdvFvaD46SRJvKQAV
 3CFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=BxOEBk0OKDVQaQ1jykEnv7FtZWP6/XV6yKSqEx4izqY=;
 b=BNIw5UffSTVfxpyRsEk/iOWk1FR/d62+Ehfpfwl86KTVpJWmwU6xcxrebOLHl3q5t8
 49SI56pVMnsaZnvylXpL34j66iq1cy7A3LejHjPuZsEshikcybksLwfyCveKtRwBRxia
 GnvHOruq6Bls5Xj/ottPw6fiNLLihMKkV5n9GQk4OgpcT/81/yqqignJEM1xys2jQVj7
 BTI0fJvLPWL7neuRznT3JHGO+ALnNOxzDm39CT1c6bZtx+6clzdA7WvavY/Q3k7j3VK+
 wgcnO8eOsgmz/RBYlYAze8iubyBa8FLZtS8pEGFqMiDgOGk8pYF+jVrgr/hVdJre0w2G
 I8SA==
X-Gm-Message-State: APjAAAW0X8Jlhkx15GsvNGwKGBUZmM6AF8MgspOOCazdeyKozij29UsH
 LsQSweu1WIzVel1NHoFX/nAWBA==
X-Google-Smtp-Source: APXvYqyWqw8BKICcq5QZlIbjaSRydX9hYWd4c1GuAjl40H9iZHJ6iLJuURr569xFagrcOuf+H0w3aA==
X-Received: by 2002:a1c:7c11:: with SMTP id x17mr651484wmc.168.1581535434685; 
 Wed, 12 Feb 2020 11:23:54 -0800 (PST)
Received: from linaro.org (14.red-88-14-208.dynamicip.rima-tde.net.
 [88.14.208.14])
 by smtp.gmail.com with ESMTPSA id 16sm1940727wmi.0.2020.02.12.11.23.53
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 12 Feb 2020 11:23:54 -0800 (PST)
Date: Wed, 12 Feb 2020 20:23:51 +0100
From: Daniel Lezcano <daniel.lezcano@linaro.org>
To: Benjamin GAIGNARD <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3 1/2] dt-bindings: mfd: Document STM32 low power
 clkevent bindings
Message-ID: <20200212192351.GC2949@linaro.org>
References: <20200128120702.26166-1-benjamin.gaignard@st.com>
 <20200128120702.26166-2-benjamin.gaignard@st.com>
 <20200212165116.GA2949@linaro.org>
 <f25fc32a-7131-6b78-5bf2-d2028e74820e@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <f25fc32a-7131-6b78-5bf2-d2028e74820e@st.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200212_112356_856653_016ACD9E 
X-CRM114-Status: GOOD (  10.57  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:344 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: "mark.rutland@arm.com" <mark.rutland@arm.com>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 Alexandre TORGUE <alexandre.torgue@st.com>,
 "linus.walleij@linaro.org" <linus.walleij@linaro.org>,
 "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
 Pascal PAILLET-LME <p.paillet@st.com>,
 "robh+dt@kernel.org" <robh+dt@kernel.org>,
 "mcoquelin.stm32@gmail.com" <mcoquelin.stm32@gmail.com>,
 "tglx@linutronix.de" <tglx@linutronix.de>,
 Fabrice GASNIER <fabrice.gasnier@st.com>,
 "linux-stm32@st-md-mailman.stormreply.com"
 <linux-stm32@st-md-mailman.stormreply.com>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Benjamin,

On Wed, Feb 12, 2020 at 05:07:49PM +0000, Benjamin GAIGNARD wrote:
> On 2/12/20 5:51 PM, Daniel Lezcano wrote:
> > On Tue, Jan 28, 2020 at 01:07:01PM +0100, Benjamin Gaignard wrote:
> >> Add a subnode to STM low power timer bindings to support clkevent driver
> > clkevent is Linux specific.
> Does 'event' or 'broadcast' would sound better ?

As this describes the timer hardware block of the mfd, I would say 'timer' is
more appropriate.


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
