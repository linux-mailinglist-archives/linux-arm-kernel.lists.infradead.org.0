Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D2927ECF99
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  2 Nov 2019 16:51:22 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=XSNAJLu+MyC+ZX52QHt/MO+z9rmdvYbRCU40VP9BVsw=; b=JdIscFvDSqvcGn
	RZSpioyMb17AuOrg4ZXSfClE1y70UsTyou+Pl/One406z3iBGoZLf3htOcKq6vBuyFM8voEM+/yJg
	aIuArrnVoY7p294D+ka1YeEK+tts/D1eFFjYP4vpfRA14bzuJdqvxPc6W2xK4wm2IowPfKPqfo/kx
	6v9vY5LSEMWN/Udb9QuK02QF0fLWOjgYCVIzQ4vNHCj0Ax7YCVAbDS9QQsvlkxbeeyHFMy2N+zRO+
	S3yAcTdvXmkaMLkF9Z74/vLJWKkZgMY/SJs3ldQsoYCXNeUtem3ArAX+pE7k2eyX1EWRx54XxApHb
	Vkf06Q/kzqZmr6YdCIDw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iQvgN-0006Fz-HN; Sat, 02 Nov 2019 15:51:19 +0000
Received: from wp126.webpack.hosteurope.de ([2a01:488:42:1000:50ed:8485::])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iQvgF-0006Eg-EU; Sat, 02 Nov 2019 15:51:13 +0000
Received: from [2003:a:659:3f00:1e6f:65ff:fe31:d1d5]
 (helo=hermes.fivetechno.de); authenticated
 by wp126.webpack.hosteurope.de running ExIM with esmtpsa
 (TLS1.2:ECDHE_RSA_AES_256_GCM_SHA384:256)
 id 1iQvg8-0008Sp-Ij; Sat, 02 Nov 2019 16:51:04 +0100
X-Virus-Scanned: by amavisd-new 2.11.1 using newest ClamAV at
 linuxbbg.five-lan.de
Received: from dell2.five-lan.de (pD9E89706.dip0.t-ipconnect.de
 [217.232.151.6]) (authenticated bits=0)
 by hermes.fivetechno.de (8.15.2/8.14.5/SuSE Linux 0.8) with ESMTPSA id
 xA2Fp2pW029369
 (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NO);
 Sat, 2 Nov 2019 16:51:03 +0100
Subject: Re: [PATCH] arm64: dts: rockchip: Split rk3399-roc-pc for with and
 without mezzanine board.
To: Jagan Teki <jagan@amarulasolutions.com>
References: <075b3fa6-dab7-5fec-df68-b53f32bf061b@fivetechno.de>
 <CAMty3ZDSK4mJk0bkQ_e3m1=Ar+NnGZS7q8zFYJJHtZY3HeBkfw@mail.gmail.com>
From: Markus Reichl <m.reichl@fivetechno.de>
Message-ID: <30fd5275-6219-3068-dc22-6ae147baef4e@fivetechno.de>
Date: Sat, 2 Nov 2019 16:51:02 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.1.1
MIME-Version: 1.0
In-Reply-To: <CAMty3ZDSK4mJk0bkQ_e3m1=Ar+NnGZS7q8zFYJJHtZY3HeBkfw@mail.gmail.com>
Content-Language: de-DE
X-bounce-key: webpack.hosteurope.de; m.reichl@fivetechno.de; 1572709871;
 1a0e752a; 
X-HE-SMSGID: 1iQvg8-0008Sp-Ij
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191102_085111_627211_8C821BDD 
X-CRM114-Status: GOOD (  13.08  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 devicetree <devicetree@vger.kernel.org>, Heiko Stuebner <heiko@sntech.de>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
 Rob Herring <robh+dt@kernel.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Jagan,

Am 01.11.19 um 18:18 schrieb Jagan Teki:
> On Fri, Nov 1, 2019 at 10:24 PM Markus Reichl <m.reichl@fivetechno.de> wrote:
>>
>> For rk3399-roc-pc is a mezzanine board available that carries M.2 and
>> POE interfaces. Use it with a separate dts.
> 
> Thanks for the patch. Indeed have an impression to go this via overlay
> rather than a separate dts since it is HAT for base board, does it
> make sense? or is this the way it is handling in rockchip dts files?

Please see discussion here:
http://lists.infradead.org/pipermail/linux-rockchip/2019-November/027592.html

Btw. it looks like there is an upcoming roc-pc-plus board with sound and other 
peripherals on board. That could probably use the proposed rk3399-roc-pc.dtsi,
too. 


> 
> _______________________________________________
> Linux-rockchip mailing list
> Linux-rockchip@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-rockchip
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
