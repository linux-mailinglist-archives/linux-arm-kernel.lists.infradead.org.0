Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 22CBF1AA1B9
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Apr 2020 14:47:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:References:Message-Id:Date:
	In-Reply-To:From:Mime-Version:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=CJ2B56P6tI867fswoLdIwNPMAJhFScs2oViJkJ2nAZ0=; b=RWW5duk5J9/4Ni
	/DdZtKh8siXdd27Mx2huht4NgDiuS+yOINOOB+zrWnPTwJv3hMIEhNU0j2vHBj3U3UmueNXc6DRZk
	58VVrgFxAUZtF6kWEUYG9NLMmjkpvmZjW3QVJeQyg3O7FwBGeLS3ltiK++Gsm5Jxxb33+ePcL9bMC
	UaIEO6Rz4msEXC2NmzwnRYSyGVzzp35xlnVs/n/GjPVz05sX+W31Gq4UmjK1li9d3mg0PRMpNe5+2
	SbgzomY/LiWuDxJmxD7t+7+tgA3WRRN81vyC0Js0iedIgLLHSWebBS3nvChweCUjPzq2DaUtq/ooX
	74wiWBTqNe3vOGV0p3dw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOhRX-0002ja-IB; Wed, 15 Apr 2020 12:47:03 +0000
Received: from mo6-p02-ob.smtp.rzone.de ([2a01:238:20a:202:5302::1])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOhRP-0002im-3m
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Apr 2020 12:46:56 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1586954813;
 s=strato-dkim-0002; d=goldelico.com;
 h=To:References:Message-Id:Cc:Date:In-Reply-To:From:Subject:
 X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
 bh=6/o2eUBt4iN9I0U74c2I8jHNfikxj7yqfISGp3x31ZE=;
 b=Fg+1o4uNa36Bs+Od3DvKGX8pViuvPwIHbinDV/0ZHMBuTFTUaLXc9LdeoWDi9vqoRW
 gHmpDYSxsD3lTzCYMNoRzk++p+GXGi5xmm4w7aWt89IE9DUFI6s3mZo2cEH3kOdNaIfs
 0yuqfvQ6x3iv8Cj+tU/neh1HGjstw3u2j9LtNvo6YgFSru7RLw3KosalSeZh88dTSgmV
 nat94XMBD1weR5AuTubPhOeGw3tSpm2EkZSI7MxjzsvhlZKOSZJENC3JuE93tDHdD/Y3
 2Ypp36Ozrn55L2Ft7B2K/7qzs/HDmTxsMag9wimT4up9zdlnL8dP1G+m0/3wrSGY9P35
 O8SQ==
X-RZG-AUTH: ":JGIXVUS7cutRB/49FwqZ7WcJeFKiMgPgp8VKxflSZ1P34KBp5hRw/qOxWRk4dCz3b9m9rH79DVZTKLB3vWvm2T1hRBz6in0C9d6y"
X-RZG-CLASS-ID: mo00
Received: from [IPv6:2001:16b8:26b3:fd00:4058:8a66:740e:2249]
 by smtp.strato.de (RZmta 46.4.0 AUTH) with ESMTPSA id 6028a2w3FCkp1ws
 (using TLSv1 with cipher ECDHE-RSA-AES256-SHA (curve X9_62_prime256v1 with 256
 ECDH bits, eq. 3072 bits RSA))
 (Client did not present a certificate);
 Wed, 15 Apr 2020 14:46:51 +0200 (CEST)
Subject: Re: [PATCH v6 07/12] ARM: DTS: omap5: add sgx gpu child node
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
From: "H. Nikolaus Schaller" <hns@goldelico.com>
In-Reply-To: <CAJKOXPdEkWniffmGZmf=S6E5UxWTdVGXnycqTFftXwo_45rz3w@mail.gmail.com>
Date: Wed, 15 Apr 2020 13:46:06 +0200
Message-Id: <EFA7F2F0-96EA-45D9-B8C8-00DC8C72344D@goldelico.com>
References: <cover.1586939718.git.hns@goldelico.com>
 <004611c9660943759b635a87484932869927cf74.1586939718.git.hns@goldelico.com>
 <CAJKOXPdEkWniffmGZmf=S6E5UxWTdVGXnycqTFftXwo_45rz3w@mail.gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: Apple Mail (2.3124)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200415_054655_745913_7A1E7719 
X-CRM114-Status: UNSURE (   8.70  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a01:238:20a:202:5302:0:0:1 listed in]
 [list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, David Airlie <airlied@linux.ie>,
 James Hogan <jhogan@kernel.org>, dri-devel@lists.freedesktop.org,
 linux-mips@vger.kernel.org, Paul Cercueil <paul@crapouillou.net>,
 "linux-samsung-soc@vger.kernel.org" <linux-samsung-soc@vger.kernel.org>,
 linux-omap@vger.kernel.org, Paul Burton <paulburton@kernel.org>,
 Tony Lindgren <tony@atomide.com>, Chen-Yu Tsai <wens@csie.org>,
 Kukjin Kim <kgene@kernel.org>, devicetree@vger.kernel.org,
 =?utf-8?Q?Beno=C3=AEt_Cousson?= <bcousson@baylibre.com>,
 Maxime Ripard <mripard@kernel.org>, Rob Herring <robh+dt@kernel.org>,
 letux-kernel@openphoenux.org, linux-arm-kernel@lists.infradead.org,
 Thomas Bogendoerfer <tsbogend@alpha.franken.de>,
 Philipp Rossak <embed3d@gmail.com>, openpvrsgx-devgroup@letux.org,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Ralf Baechle <ralf@linux-mips.org>, Daniel Vetter <daniel@ffwll.ch>,
 kernel@pyra-handheld.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Krzysztof,

> Am 15.04.2020 um 13:38 schrieb Krzysztof Kozlowski <krzk@kernel.org>:
> 
> On Wed, 15 Apr 2020 at 10:36, H. Nikolaus Schaller <hns@goldelico.com> wrote:
>> 
>> and add interrupt.
>> 
>> Tested-by: H. Nikolaus Schaller <hns@goldelico.com> # Pyra-Handheld.
> 
> Don't add your own Tested-by tags. These are implied by authorship,
> otherwise all patches people make should have such tag.

Ok I see. AFAIR it originates in several phases of editing to report on which device it was tested.

Is there a canonical way of writing "tested-on: ${HARDWARE}"?

E.g. would this be ok?

Signed-off: H. Nikolaus Schaller <hns@goldelico.com> # tested on Pyra-Handheld

BR and thanks,
Nikolaus Schaller


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
