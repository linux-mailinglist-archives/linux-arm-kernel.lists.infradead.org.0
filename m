Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2954E103425
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 07:08:15 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:Subject:To:From:Date:References:
	In-Reply-To:Message-Id:Mime-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mn3bjmZsaPx8K/ZwCwE8RPnrU80wOoSFzdwSvKCRbTk=; b=eKut6ruMUeYjrY
	63V9AwrkU2ii3LBq1gPowvYZnst9NZZYMTTkBVGnSVOzwVFNRSE4/gnF9jkY6iPMLUQ4JKGza3zW+
	4jIU5eD/mlrzmbHnClQjVfBcs15VEsWStwC7ZVvfHxVJgjwhlyy+/jTho7N8usiFYVGLCw2Q4NdDh
	zKJwoeNqjSkj2l0yif0ubmh/P1aqiwmtRdIqG1XFCusjm4lkKvPc7hT3zNgbaMNVLr9+Vskg4yol8
	oo2Bunk9sWj6nMeS6C1wcH7dsrkptq339ASIXrQvOUUaUC7n4fUV3iefIR67NVrqZ+kKYhRy8D2GI
	f9yH2fwyT3X0nbtIMhfA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXJ9w-0007OK-Ti; Wed, 20 Nov 2019 06:08:12 +0000
Received: from new4-smtp.messagingengine.com ([66.111.4.230])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXJ9l-0007O0-Ay
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 06:08:02 +0000
Received: from compute4.internal (compute4.nyi.internal [10.202.2.44])
 by mailnew.nyi.internal (Postfix) with ESMTP id 8120168AD;
 Wed, 20 Nov 2019 01:08:00 -0500 (EST)
Received: from imap2 ([10.202.2.52])
 by compute4.internal (MEProxy); Wed, 20 Nov 2019 01:08:00 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aj.id.au; h=
 mime-version:message-id:in-reply-to:references:date:from:to:cc
 :subject:content-type; s=fm1; bh=DsuQsdMCwuKKG1c6E9zMMunZDORO9yG
 MRO643pGAkco=; b=Fd0L4n9gK6ybYYBcSg1jQ+1Anq3REZ7jgGzCovtPqAE/Qf7
 nibUPdKv3eDWgqvMYN2XxG0LYtAm7iqdLElZ2SU2EcuQDU97upof3y5/rKu7J0qj
 4wd+UsSZoz5ns+jTk6oFghvBCuGKVESjgCqmLYDqvvMIi8+7PGqQ97iXDXslWWB/
 hNys4hZmVfu9EB1q9yAK+U3HRuFeXrqidnlTdgVLOoMhdzR+kWFII8B2uTCkRJ/i
 H3DuC4ThZzInqSom3lkAxl6YHjictrV9Ubn3izRoEoA3rng2VGb8fEoG5XienYtR
 FIIk6KuzAAevM6ygdCWFFcjQDifODP/tQjoe5Bg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:content-type:date:from:in-reply-to
 :message-id:mime-version:references:subject:to:x-me-proxy
 :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=DsuQsd
 MCwuKKG1c6E9zMMunZDORO9yGMRO643pGAkco=; b=wSfHHMIqeIxz7uUn2d14w+
 RVJjFGK++vJnIvk+WVWo+2LhVPANmImCx1DFfogwrz0w4+XWbNfJ5f6BIeoQeW+q
 yV+f3UxVN3dKbrGFNSp5QtlhwEgHbMsXh5PgNmZ1pfC7bxvF9YAWORWMzKNGpCtK
 uYBODeLR5kopolY3BPcOKPzqLljOVF5GUaZ0PAW/nvvKFjlYXqihy0iUl14pKLlS
 99bgQBQ82BSvwtROesF3tUuZu085Htvrm59DQiGUOyMOGmIDZWK5MpS4x3GHFP3g
 IfM6Frwfacx1N8JxtCfmqswSgX0v2QgQUqvzplK5741QIJTyzljQcbEJKTc3SXvQ
 ==
X-ME-Sender: <xms:QNjUXWJ2ujlBAKIfuc9xx6W73U9KNM57P4vef5G9WMlmfLGd-1iX0g>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudegledgledvucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepofgfggfkjghffffhvffutgesthdtredtreertdenucfhrhhomhepfdetnhgu
 rhgvficulfgvfhhfvghrhidfuceorghnughrvgifsegrjhdrihgurdgruheqnecurfgrrh
 grmhepmhgrihhlfhhrohhmpegrnhgurhgvfiesrghjrdhiugdrrghunecuvehluhhsthgv
 rhfuihiivgeptd
X-ME-Proxy: <xmx:QNjUXV626hPjxjiHuOLWBVDS-F3NZe_zGbxRynf3AD9D_lPoK1etCw>
 <xmx:QNjUXbuJg1QQvHvrn9xtjvmCsDQSdZkBc2ntB7i2C9AJEZqIqAGP8w>
 <xmx:QNjUXTZh-E3-mu7lCLDC6Av9Czb4yjJMXjLnR-9fqX_lO6ChGEgxVw>
 <xmx:QNjUXTZvhspj1tktg1bwvQlCwqHwSasFZ_W2ijcrQRSSGu_GuGIyrQ>
Received: by mailuser.nyi.internal (Postfix, from userid 501)
 id 49FE6E00A3; Wed, 20 Nov 2019 01:08:00 -0500 (EST)
X-Mailer: MessagingEngine.com Webmail Interface
User-Agent: Cyrus-JMAP/3.1.7-578-g826f590-fmstable-20191119v1
Mime-Version: 1.0
Message-Id: <ebe4c175-a1a0-47d3-9c01-1dfeeffc97e5@www.fastmail.com>
In-Reply-To: <20191118104646.3838-2-i.mikhaylov@yadro.com>
References: <20191118104646.3838-1-i.mikhaylov@yadro.com>
 <20191118104646.3838-2-i.mikhaylov@yadro.com>
Date: Wed, 20 Nov 2019 16:39:25 +1030
From: "Andrew Jeffery" <andrew@aj.id.au>
To: "Ivan Mikhaylov" <i.mikhaylov@yadro.com>
Subject: Re: [PATCH v3 1/3] aspeed: dts: add sd card for vesnin
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191119_220801_450087_5200FF0B 
X-CRM114-Status: UNSURE (   6.40  )
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
> Presence signal is inverted for vesnin boards, 'cd-inverted' added
> for invertion signal enablement. Vesnin BMC uses microSD, there is
> no WP switch, 'disable-wp' is used for this purpose.
> 
> Signed-off-by: Ivan Mikhaylov <i.mikhaylov@yadro.com>

Acked-by: Andrew Jeffery <andrew@aj.id.au>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
