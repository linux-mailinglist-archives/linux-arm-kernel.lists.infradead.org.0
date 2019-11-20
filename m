Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BDD4510341F
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 07:07:21 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2si2TufQr/LMHfsU857urgXygAo3pALA16ppJELU5+c=; b=L6pb7vmvchG+Dw
	ZWHQLRSQ2DqsfwKMV2+HF/lJBNtaeVB1MUODzl6CtSkMVWecjigoJP+/5+CxaeuVks8Q3CrSgEMzb
	JE2j0GCJaXs5Ggjc81Pt7Bkk91o+XXBBDDTfSQfVRMPU4y8akfX+KASi0OQbDjHXV85V//fsM2YEj
	3O41wmo2PKQqktaFemy25K5DfHrbnoO3p+QHW8ng9Wxq3+bsGKEu2gngucaCcvxwsu2sgOZ7+aTDM
	c6kOm+JfI/5e4cmqjoPSn+zPhxdvJtiyM0V/MJSzZv4ZgIaZX9H8RbCuQCsC0iWBoW2x7UWH0MgLz
	qaT/ra1eoAnrx/CPdFSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJ96-00071h-4Y; Wed, 20 Nov 2019 06:07:20 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJ8x-00070t-KT
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 06:07:12 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 867435870;
 Wed, 20 Nov 2019 01:07:08 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 20 Nov 2019 01:07:08 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=TGFoOR8k4c4tdXLrnHIT+DIILptA4jZ
 EVoNDESk6+yw=; b=edouY/yf5Ltb2h4tveU+VBLDqigm6a+1o88WqNYbDlnHSuY
 NBdl3gWfrhkds2iRT7jM3shb6CLSHf0fy6Oob5Vv/fm8cHXsf+Lauk1vF2SFesqI
 DNinzU6/eCcVHcmCORlwu2A3KBQF61/VdvU3QlrI8kcCUlr1TokQgz55E8JkiZs2
 WKyQyLY2kdh7CPFL6RhyuXX87PhdPh+uKfsFioJBxWLmUkWI0SrkS4FL2TMPncRZ
 Qv7kaNH0kB9ELX31uGZDL/mXVhS66ynXtF0nl7mDo3MQCM5AYuMmDTBGUMYskln8
 NeYoZgIHkcNwqrZS3f68eOaVDkGtBTc8eiFBkOg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=TGFoOR
 8k4c4tdXLrnHIT+DIILptA4jZEVoNDESk6+yw=; b=ariIa8DSRjxdXYdh8Z5Lro
 DB+BCB4mf3iRxK7QxOA0RgQ8uVPrJ/4XOrFwysxaZYZvtVC0XGqBi0a9KM08R1VZ
 xm+vvuxDR2X5LFe4PohbZ1Dew5/jXxQWhuX3CtmzEGJFsUzf112wv4wiZ4tuXXu8
 187pdMVL/LB9txSCIbpJ+9HuE0sOYvv2RZgmP959W5su918V2mLCmVsBY+0qb9md
 5war8QCBhkRlbCB4tetpXLAXn44wDQzJerFHdk6HrZt1pV2h5a4i/tf+h+ZDvyy1
 PnJxolhBvXl1nnDjet9V/d2kL+B4BgtS/HbgGW+m7niln0yYiTZ423UPretPb5Uw
 ==
X-ME-Sender: <xms:DNjUXRYMKacsLTHV0VrBYTs7OAVFK5z3O6F0DRECwlISpOLCvx-QPQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudegledgleduucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreerjeenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgepud
X-ME-Proxy: <xmx:DNjUXUOJZPIWiblwnQxzM3JsDfovVhv1VV0EMZfwN2Fyi_21oNEegw>
 <xmx:DNjUXabHS0fhLPD9p1WVOx8WakeGSKcVzb2e5OpjGdro-hw6ChiH8A>
 <xmx:DNjUXcUq1gW5LvqJNwgeoskUiwgzvWqExEzZleeaRe4cAwEqRQ8MQg>
 <xmx:DNjUXaKBqLPDutNNhrlKe1gwGe_K4mBpHPBswL1Ow9qg9zF-IKU7Tg>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 14E75E00A3; Wed, 20 Nov 2019 01:07:08 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <794a7661-b4c1-46eb-bc78-79e7358ff999@www.fastmail.com>
In-Reply-To: <20191118104646.3838-3-i.mikhaylov@yadro.com>
References: <20191118104646.3838-1-i.mikhaylov@yadro.com>
 <20191118104646.3838-3-i.mikhaylov@yadro.com>
Date: Wed, 20 Nov 2019 16:38:32 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Ivan Mikhaylov" <i.mikhaylov@yadro.com>
Subject: =?UTF-8?Q?Re:_[PATCH_v3_2/3]_mmc:_sdhci-of-aspeed:_enable_CONFIG=5FMMC=5F?=
 =?UTF-8?Q?SDHCI=5FIO=5FACCESSORS?=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_220711_744342_C9EE95FE 
X-CRM114-Status: UNSURE (   4.97  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [66.111.4.230 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
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
 Ulf Hansson <ulf.hansson@linaro.org>, linux-aspeed@lists.ozlabs.org,
 openbmc@lists.ozlabs.org, linux-mmc <linux-mmc@vger.kernel.org>,
 Adrian Hunter <adrian.hunter@intel.com>, linux-kernel@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>, Joel Stanley <joel@jms.id.au>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org



On Mon, 18 Nov 2019, at 21:16, Ivan Mikhaylov wrote:
> Enable CONFIG_MMC_SDHCI_IO_ACCESSORS on the aspeed board. 

s/on the aspeed board/for the ASPEED MMC driver/

but otherwise:

Reviewed-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
