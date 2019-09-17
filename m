Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EE03EB507D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 17 Sep 2019 16:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Subject:Mime-Version:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ihD9T26OS9yuN+/gLs0tuoVznc0gHAZr/NQTTLqd9Yk=; b=O2isJ8i7e5sIgV
	kfDZ71Yg7gYhTm13fMTxs6+CHgSmtBfy7QUSVb/o3rmmfyLiGhbpyUtfvbpIFUGtd1gmdA9GfKdv+
	N5HsFx0hLsYF+6Yip0Yc5Aqoe0rAoCCikrHlzGenEdti5JAlCDhnBH4MlV0XMDq7M19Qv2EbPG7wJ
	9oc33PdpPCu/Mbr6HUprNZihn5cR6dWuP0cD7b4j4/5KK46wWhOzpehaxXC2V0BWEW2wYAXju1gPI
	zKU0P89npooicp/dz+Ne4UT3sAwAATOqcpe7Peop+JCdyNIG+TVrj1ozThR1+poNV35AFChnkVT8A
	uxZ7R/+ML5M0vPLOJGsQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iAEZj-0004nh-1z; Tue, 17 Sep 2019 14:35:27 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::5])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iAEZW-0004mR-0g
 for linux-arm-kernel@lists.infradead.org; Tue, 17 Sep 2019 14:35:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1568730908;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=aDkxVMbY8vRvqozEwY9dfWbrp1yfXlJPYl/GV2fom4s=;
 b=IheBXorFRH5QVvC0COFRlevuawksvfvMO0yqZfHTrzVeiMcBi9xL+r9SZNV5iXu6Qw
 nQK+f5DEWWdZWrE74EuLXe22lH2BZCuUPcmUd1nDWdlfrRKp3mK5O1Ff2fmc5FAjSR/8
 tWiW9FlnrymdYnylPwjNScffpEHOYSzxlY4r4naFmv8SfSUPM33mKfxo8GgD9qSmESWN
 ZpZzRaxVtw01/3MSiVje3B95WRM9bYikoOv3JtRR1b7HI9HCewwUPVwq5M6GTjtvcUFd
 R9us+Gex1YoTp+qpR0Uypb3QT/L5xdQZkYCvYJiykntSsPI8mWMcH/owLNy4fVQ7mKEg
 mUOQ==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBp5hRw/qOxWRk4dCyjDPUnsm74p9bR0nKSw0V7uzbYrtFUHmEd2msW"
X-RZG-CLASS-ID: mo00
Received: from [IPv6:2001:16b8:266f:d200:e9b9:e9c0:8734:b26d]
 by smtp.strato.de (RZmta 44.27.0 AUTH)
 with ESMTPSA id u036f9v8HEZ6XP4
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve secp521r1 with 521 ECDH
 bits, eq. 15360 bits RSA)) (Client did not present a certificate);
 Tue, 17 Sep 2019 16:35:06 +0200 (CEST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
Subject: Re: [PATCH v3 0/8] OMAP3: convert opp-v1 to opp-v2 and read speed
 binned / 720MHz grade bits
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <20190916162816.GF52127@atomide.com>
Date: Tue, 17 Sep 2019 16:35:22 +0200
Message-Id: <DAF6ACB4-AD7E-4528-9F4B-C54104B5E260@goldelico.com>
References: <cover.1568224032.git.hns@goldelico.com>
 <20190916162816.GF52127@atomide.com>
To: Tony Lindgren <tony@atomide.com>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190917_073514_650890_57219B05 
X-CRM114-Status: UNSURE (   7.02  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [2a01:238:20a:202:5302:0:0:5 listed in]
 [list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 letux-kernel@openphoenux.org, linux-pm@vger.kernel.org,
 Enric Balletbo i Serra <eballetbo@gmail.com>,
 Viresh Kumar <viresh.kumar@linaro.org>,
 "Rafael J. Wysocki" <rjw@rjwysocki.net>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 =?utf-8?Q?Andr=C3=A9_Roth?= <neolynx@gmail.com>,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 kernel@pyra-handheld.com, Teresa Remmet <t.remmet@phytec.de>,
 Javier Martinez Canillas <javier@dowhile0.org>, linux-omap@vger.kernel.org,
 Adam Ford <aford173@gmail.com>, linux-arm-kernel@lists.infradead.org,
 Roger Quadros <rogerq@ti.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Tony,

> Am 16.09.2019 um 18:28 schrieb Tony Lindgren <tony@atomide.com>:
> 
> * H. Nikolaus Schaller <hns@goldelico.com> [190911 17:48]:
>> CHANGES V3:
>> * make omap36xx control the abb-ldo and properly switch mode
>>  (suggested by Adam Ford <aford173@gmail.com>)
>> * add a note about enabling the turbo-mode OPPs
> 
> Looks good to me, when applying, please provide a
> minimal immutable branch maybe against v5.3 or v5.4-rc1,
> that I can also merge in if needed for the dts changes.

Should I resend a v4 with your Acked-By added?

BR and thanks,
Nikolaus


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
