Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E2C74A255
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Jun 2019 15:35:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:Message-ID:References:In-Reply-To:From:Date:
	MIME-Version:Subject:To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kMhjjqslwqY6Hk4SHqVy3qPC8hsWsV9E7yKIQ10J6Xw=; b=n3QrY7VOLTX3uEpnbBlaXlnz6
	fpECONnfSz7TeGpr7/lyG53OiR9ThvdUV0MGIKLrfV4QCmbAz+nMnqJNv6wC6GJtH/Nr7p60JB9za
	Eq0tU3+ogs8t40iW0vXXVQ0BotvjlXwT5l5zeGscowdZXxqmlmAMMm2eC1hxQ2PaEQThrDwhOSMK0
	FWeaoR1dCxUDj+BTy/slkwKA4dexIasRjRfxL3G1Xxlthlvg00rPus7VP7wypVsRgKFFa+WMOfcfL
	LpHkxcueptsc4Dv+9bLCim+N5xg3UWc4Ilti8wutXD9Ui7jWhVOcr+S2UWvv1Mb4N/gxnZyGL6DIw
	QzsLJA4Yw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hdEGk-000083-Su; Tue, 18 Jun 2019 13:35:26 +0000
Received: from node.akkea.ca ([192.155.83.177])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hdEGU-00007M-Vl
 for linux-arm-kernel@lists.infradead.org; Tue, 18 Jun 2019 13:35:12 +0000
Received: by node.akkea.ca (Postfix, from userid 33)
 id 5C7B94E204B; Tue, 18 Jun 2019 13:35:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=akkea.ca; s=mail;
 t=1560864907; bh=MT3CFRKGsj2MeUNMuZZstm1cs/HxYQ6CLk7N8FsW6TI=;
 h=To:Subject:Date:From:Cc:In-Reply-To:References;
 b=cshrEHKb8VA/3+BRVSbDe8LRiQ3m8Gb1GY0AphCO3iN90JSKdZIR1ZsNebFRTP9hp
 9lo0Y+2Q/S94BSR+QCMRKwRvGpLBwDZbIsaSLPNgzCyg0z1OzBOVL5jVb++h4k2W+3
 FieyPybvjGZ0EsbJRzg0FTsX0H/fH/eMp1KTu4xA=
To: Shawn Guo <shawnguo@kernel.org>
Subject: Re: [PATCH v16 0/3] Add support for the Purism Librem5 devkit
X-PHP-Originating-Script: 1000:rcube.php
MIME-Version: 1.0
Date: Tue, 18 Jun 2019 07:35:07 -0600
From: Angus Ainslie <angus@akkea.ca>
In-Reply-To: <20190618132009.GF1959@dragon>
References: <20190617135215.550-1-angus@akkea.ca>
 <20190618132009.GF1959@dragon>
Message-ID: <a4f077a86cbf6fa38b8d4c8079226abe@www.akkea.ca>
X-Sender: angus@akkea.ca
User-Agent: Roundcube Webmail/1.1.3
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190618_063511_072706_D3074F7C 
X-CRM114-Status: UNSURE (   5.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
 pavel@ucw.cz, Sascha Hauer <s.hauer@pengutronix.de>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>,
 Pengutronix Kernel Team <kernel@pengutronix.de>, angus.ainslie@puri.sm,
 Fabio Estevam <festevam@gmail.com>, linux-arm-kernel@lists.infradead.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 2019-06-18 07:20, Shawn Guo wrote:
> On Mon, Jun 17, 2019 at 07:52:12AM -0600, Angus Ainslie (Purism) wrote:
>> Angus Ainslie (Purism) (3):
>>   arm64: dts: fsl: librem5: Add a device tree for the Librem5 devkit
>>   dt-bindings: Add an entry for Purism SPC
>>   dt-bindings: arm: fsl: Add the imx8mq boards
> 
> Applied all, thanks.

Thanks Shawn !


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
