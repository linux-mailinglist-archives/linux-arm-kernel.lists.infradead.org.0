Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1E85A5FC
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Jun 2019 22:38:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Ly1FZkyPRKs3PQDIjRf0U8nvsCLppcwzJ+SpqzrXF1Q=; b=H13b0B8l7Hlt/k
	4SxhkTJFaUzRB0PP0y9sVaS8hdkU9MDTp2UC/DGUzweFKIMNXxZN8cmPazqsC2/jKyqgCC4IZjthr
	P78owXnol8zrfqjUyq/5D44xUuFNMeB+Cjy+QYecvq0Z9GhTZF6OuvVkcdd8/GHliS2yl/Pa+gr/+
	7YG3aid3iwYQ44uHQ7tS2a1Ot3NK9TMhGxqEM8hBuG+U/hCbeZ8MUBU5Ss4HkF/JKDEicxfjwVHwo
	9BB0vIGJaDk2SFdPtSHGpeikfULn0EeosBbg6Q5lAnC6S1sBJ4T5QfLZFk6Az4RjYvA3sXBfty+Dq
	be0O/9CnGujhZW2Ow71w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hgxdL-0004bI-HC; Fri, 28 Jun 2019 20:38:11 +0000
Received: from fllv0016.ext.ti.com ([198.47.19.142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hgxdB-0004al-9j
 for linux-arm-kernel@lists.infradead.org; Fri, 28 Jun 2019 20:38:03 +0000
Received: from lelv0266.itg.ti.com ([10.180.67.225])
 by fllv0016.ext.ti.com (8.15.2/8.15.2) with ESMTP id x5SKbt9Q023305;
 Fri, 28 Jun 2019 15:37:55 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ti.com;
 s=ti-com-17Q1; t=1561754275;
 bh=qmjPdpLPSWAbNfzvl0aaOl50HSO4HcYPbHirzrfr7ZI=;
 h=Date:From:To:CC:Subject:References:In-Reply-To;
 b=MYQYl81UM5yoC89mnR/inx37O4v6oLP7Rm7cPKT9hnUsBYrwbOMIRnadob18bJY2v
 VSwPajYeoR5NXWElHRiTYQ0b5/FyR3W+218zbz/XlpZBfuduO4yEvO1PLoFRGTjFDi
 d52Cx2Ys61aX9LUA1z/BAJ0wZP6IyR6N09c8LQy4=
Received: from DFLE105.ent.ti.com (dfle105.ent.ti.com [10.64.6.26])
 by lelv0266.itg.ti.com (8.15.2/8.15.2) with ESMTPS id x5SKbtRB020988
 (version=TLSv1.2 cipher=AES256-GCM-SHA384 bits=256 verify=FAIL);
 Fri, 28 Jun 2019 15:37:55 -0500
Received: from DFLE110.ent.ti.com (10.64.6.31) by DFLE105.ent.ti.com
 (10.64.6.26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5; Fri, 28
 Jun 2019 15:37:55 -0500
Received: from lelv0326.itg.ti.com (10.180.67.84) by DFLE110.ent.ti.com
 (10.64.6.31) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1713.5 via
 Frontend Transport; Fri, 28 Jun 2019 15:37:55 -0500
Received: from localhost (ileax41-snat.itg.ti.com [10.172.224.153])
 by lelv0326.itg.ti.com (8.15.2/8.15.2) with ESMTP id x5SKbtYP000389;
 Fri, 28 Jun 2019 15:37:55 -0500
Date: Fri, 28 Jun 2019 15:37:52 -0500
From: Nishanth Menon <nm@ti.com>
To: Keerthy <j-keerthy@ti.com>
Subject: Re: [PATCH v2] arm64: Kconfig.platforms: Enable GPIO_DAVINCI for
 ARCH_K3
Message-ID: <20190628203752.rdb6vvc42qd5ofgd@kahuna>
References: <20190627110920.15099-1-j-keerthy@ti.com>
 <20190627143208.eeca4xyygml7s4n3@kahuna>
 <39f5e726-8542-b650-3bdb-7542e8fab8ac@ti.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <39f5e726-8542-b650-3bdb-7542e8fab8ac@ti.com>
User-Agent: NeoMutt/20171215
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190628_133801_468532_F525044D 
X-CRM114-Status: GOOD (  16.37  )
X-Spam-Score: -2.5 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [198.47.19.142 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: lokeshvutla@ti.com, catalin.marinas@arm.com, will.deacon@arm.com,
 linux-kernel@vger.kernel.org, t-kristo@ti.com, shawnguo@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 09:08-20190628, Keerthy wrote:
[..]
> > > +	select GPIO_SYSFS
> > > +	select GPIO_DAVINCI
> > 
> > 
> > Could you help explain the logic of doing this? commit message is
> > basically the diff in English. To me, this does NOT make sense.
> > 
> > I understand GPIO_DAVINCI is the driver compatible, but we cant do this for
> > every single SoC driver that is NOT absolutely mandatory for basic
> > functionality.
> 
> In case of ARM64 could you help me find the right place to enable
> such SoC specific configs?

Is'nt that what defconfig is supposed to be all about?

arch/arm64/configs/defconfig

> 
> > 
> > Also keep in mind the impact to arm64/configs/defconfig -> every single
> > SoC in the arm64 world will be now rebuild with GPIO_SYSFS.. why force
> > that?
> 
> This was the practice in arm32 soc specific configs like
> omap2plus_defconfig. GPIO_SYSFS was he only way to validate. Now i totally
> understand your concern about every single SoC rebuilding but now where do
> we need to enable the bare minimal GPIO_DAVINCI config?

Well, SYSFS, I cannot agree testing as the rationale in
Kconfig.platform. And, looking at [1], I see majority being mandatory
components for the SoC bootup. However, most of the "optional" drivers
go into arm64 as defconfig (preferably as a module?) and if you find a
rationale for recommending DEBUG_GPIO, you could propose that to the
community as well.

Now, Thinking about this, I'd even challenge the current list of configs as
being "select". I'd rather do an "imply"[2] - yes, you need this for the
default dtb to boot, however a carefully carved dtb could boot with
lesser driver set to get a smaller (and less functional) kernel.

> 
> v1 i received feedback from Tero to enable in Kconfig.platforms. Hence i
> shifted to this approach.

I noticed that you were posting a v2, for future reference, please use
diffstat section to point to lore/patchworks link to point at v1 (I
did notice you mentioned you had an update, thanks - link will help
catch up on older discussions). This helps a later revision reviewer
like me to get context.

Tero, would you be able to help with a better rationale as to where the
boundaries are to be in your mind, rather than risk every single
peripheral driver getting into ARCH_K3?

As of right now, I'd rather we do not explode the current list out of
bounds. NAK unless we can find a better rationale.


[1] https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/arm64/Kconfig.platforms
[2] https://www.kernel.org/doc/Documentation/kbuild/kconfig-language.txt

-- 
Regards,
Nishanth Menon

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
