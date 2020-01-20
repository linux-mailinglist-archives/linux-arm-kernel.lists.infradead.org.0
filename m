Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B53BB1432B0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 20 Jan 2020 20:59:39 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:To:From:
	Subject:Date:In-Reply-To:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=AsoiT3xwxkBqjQSuSbDJY53lOh0sLn1vvb3EcOrzFf0=; b=Rjfbpmn1GyrtBN
	uH6a82lfVnYbV3SkA1encCHDyLt+/M/GS90HvYRs9syvgN/XMwKcGYQEmfuErHhZ8uaFjUfex21gm
	OLh0i9ZEcyNFnE9trveHm9+u04LxXNIHd50ZnCyGabBhrBJ7EdthfIKKZDFvFsRuyJgEiPwkz3UyZ
	Cd4SVF7Bzp1ggS20oiqarzRjH9kjemgQ4oIC2p1OYHubgaoRRHDXURnsz97fv3adiWLcyWf4kSqht
	f8tszEcsnWKacZPbtLb212/32+p8XDLBnYsTQZT9/YksCOeKx2dtlB1u0edE1V3r+VwSK8BGODaHS
	Bp9/iZz+10GcSEMxA+ow==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1itdCq-0005f3-KI; Mon, 20 Jan 2020 19:59:28 +0000
Received: from sender4-of-o51.zoho.com ([136.143.188.51])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1itdCf-0005eJ-O4; Mon, 20 Jan 2020 19:59:19 +0000
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1579550348; 
 s=selector01; d=brennan.io; i=stephen@brennan.io;
 h=Content-Transfer-Encoding:Content-Type:In-Reply-To:Date:Subject:From:To:Cc:Message-Id;
 bh=zGEdNMOLYUYRRFqkqQsKe15wlZAeAg0gSQKMVkqOP1g=;
 b=Pwe9wDFD2vVddbh4roqz2VZ+YSXzOhU7ZRLVdYZHQNQ4wDVmXyadx67RG0G5iEob
 Cl7YPIGzVqy1fqpo08WLBkZEVb7ytHY1ooWF4rfqvPuNcrOXAQ/YHRk+dt96FxDd3Nt
 LqisxORP7jbEwJheB7gfR5YRBhv8aQaFNCIC9WxM=
Received: from localhost (195.173.24.136.in-addr.arpa [136.24.173.195]) by
 mx.zohomail.com with SMTPS id 1579550343636345.40512828000374;
 Mon, 20 Jan 2020 11:59:03 -0800 (PST)
Originaldate: Mon Jan 20, 2020 at 12:03 PM
Originalfrom: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
Original: =?utf-8?q?Hi_Stephen,
 =0D=0A=0D=0AOn_Sun,_2020-01-19_at_20:17_-0800,_Steph?=
 =?utf-8?q?en_Brennan_wrote:=0D=0A>_When_booting_Raspberry_Pi_4B_using_a_m?=
 =?utf-8?q?icro_SDHC_UHS_class_1_card,_the_SD=0D=0A>_card_partitions_never?=
 =?utf-8?q?_appear_in_/dev.__According_to_the_device_tree=0D=0A>_bindings_?=
 =?utf-8?q?for_Broadcom_IPROC_SDHCI_controller,_we_should_use=0D=0A>_"brcm?=
 =?utf-8?q?,bcm2711-emmc2"_compatible_string_on_BCM2711._Set_this_compatib?=
 =?utf-8?q?le=0D=0A>_string,_which_allows_these_cards_to_be_mounted.=0D=0A?=
 =?utf-8?q?>=3D20=0D=0A>_Signed-off-by:_Stephen_Brennan_<stephen@brennan.i?=
 =?utf-8?q?o>=0D=0A=0D=0AYour_UHS_class_1_card_should_work_out_of_the_box_?=
 =?utf-8?q?using_the_current_kernel=0D=0Aversion._Note_that_the_device_nod?=
 =?utf-8?q?e_is_defined_here:=0D=0A=0D=0Ahttps://git.kernel.org/pub/scm/li?=
 =?utf-8?q?nux/kernel/git/torvalds/linux.git/tree/arc=3D=0D=0Ah/arm/boot/d?=
 =?utf-8?q?ts/bcm2711.dtsi=3Fh=3D3Dv5.5-rc7#n255=0D=0A=0D=0Aand_enabled_he?=
 =?utf-8?q?re:=0D=0A=0D=0Ahttps://git.kernel.org/pub/scm/linux/kernel/git/?=
 =?utf-8?q?torvalds/linux.git/tree/arc=3D=0D=0Ah/arm/boot/dts/bcm2711-rpi-?=
 =?utf-8?q?4-b.dts=3Fh=3D3Dv5.5-rc7#n98=0D=0A=0D=0ARegards,=0D=0ANicolas?=
 =?utf-8?q?=0D=0A=0D=0A?=
In-Reply-To: <936f10bbeca467ea8ebc669280a50c688730689d.camel@suse.de>
Date: Mon, 20 Jan 2020 11:59:00 -0800
Subject: Re: [PATCH] ARM: dts: bcm2711: Use bcm2711 compatible for sdhci
From: "Stephen Brennan" <stephen@brennan.io>
To: "Nicolas Saenz Julienne" <nsaenzjulienne@suse.de>
Message-Id: <C00VV4QDHC2Q.20QYUR6KOPB8G@pride>
X-ZohoMailClient: External
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200120_115917_842873_7841B4DD 
X-CRM114-Status: UNSURE (   8.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 BAD_ENC_HEADER         Message has bad MIME encoding in the header
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 bcm-kernel-feedback-list@broadcom.com, linux-rpi-kernel@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Nicolas,

You're right, this patch doesn't work (it doesn't even touch the correct 
device tree node). My bad.

> Your UHS class 1 card should work out of the box using the current
> kernel version.

I've been debugging an issue (reproduced on today's linux-next) in which my 
UHS class 1 card's partitions don't show up in `/dev`. For example, if I do 
`ls /dev | grep mmc`, I get just one result, "mmcblk1". I thought my patch 
fixed the issue, but it turns out that the issue is sporadic: on some 
boots, the issue manifests. On others, the partitions appear in /dev as 
normal. When I tested this patch, the issue had sporadically disappeared, 
leading me to believe the patch was effective.

Sorry for the noise! If you have any suggestions on debugging this, I'd 
appreciate it. As far as I know it could be anything - the particular card, 
the particular Pi, etc.

Thanks,
Stephen


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
