Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 43E9611D766
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 20:45:36 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=rsCPjU2lIxCZ81GbViU/fk2lJkLftTeRcvp7rhPz9BM=; b=Bqc1/aItAiFOVW
	SCG3Oo+GlXAWWA11WjBNPe5SO0TN5GDApSP87+82NuxCZtUeTBUwZchuMTgfC0GYL6ZdOpv3Jjk4D
	edn97NbXks9PtHzmNHMr3aJ8vn1Lq76vbcYmcxgigWekpw4yO6NT0RYene9aVi1KfLvflU3+rATd2
	s9xYNm9C8YAPipVVW2TEp4+BrMquC3pW+jhKzSlXTUaJ0bTaDCCqsI7GpuyzDsDklSkxDJ7oEGwpq
	Nbzqxj1SHfwIhh8U7xjG2ZwBlGOtz4Y2S8MV2CCdwSrxUceopI0PtDNYrUUQ+kEPXELzeTbJZAwI/
	sDgJl0DMVRwADPjqXH5w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifUOu-0007Hp-OW; Thu, 12 Dec 2019 19:45:28 +0000
Received: from mail-lj1-x244.google.com ([2a00:1450:4864:20::244])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifUOn-0007H1-4i
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 19:45:22 +0000
Received: by mail-lj1-x244.google.com with SMTP id j6so1226lja.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 11:45:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=N+PmL68gGL5r6ZrrKGwRVkf2UFSLh9doEOWXto4LbOY=;
 b=VURgeD1ZkMkt5tMDkzF5AJQ/Xhv5yYsEvS6k5ISAsKFAagwTBSZAbkHFfNpILalqVO
 XkFQt+LSHpB3Os6s+FRfKYiBzy0BXVRFfeMxJc0dHOPEAe4nifiC7kbyKwitAtomB7GH
 4X+RhCdblXdabWvFLlJsYGXh5JDs3UwbYURg5Q8nAzWBBuTRCcawntZWIrzWi4vH634B
 0qfXHIWXnpbJmB08g8Xpky674GBW2O/CkzTFzq1GfU/4MwMAE/ex94F69CJ0BEehZRCf
 hEQrC/6ZUK4o/sdRUvbwLhLnh4T2mwEEXVUwa+zWhf6o5MSRrPR38ooLnP+LkKR3una1
 G1Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=N+PmL68gGL5r6ZrrKGwRVkf2UFSLh9doEOWXto4LbOY=;
 b=D9KyeRs1OGRfYtpGc9gwqlqS8X6JiGgxcPsyKhgrpfy2pBVWX7esgo3D874h3OmewS
 ms+6ev1x38Zp+Z+zYT9ZldrEbidqrw2NxLV00J+lsWF7R6YACDhUkMzKlXEf6rdKxmgC
 7B0tLklcbmBX+/kB8ycrA9T9a2TdqpzaH7PUiJJ+kR6aGKWObX5gd4fxq4DaU4Y06isQ
 GK0HhNOT4bn3BTxEuYwZQH3ztfSaB6feC+vfRX0Oe2pAErwlRDMLHgYxuFsITY/q2uNp
 UZ0ytGf70xdrkO8fy0iJ9ypeBywpbt9yVI3jDn0UeAhJMiw5+tvK4aHYhbs08K0Pb+RG
 mD+Q==
X-Gm-Message-State: APjAAAXUdOGCHteZkYIT/Qj57TNn5ELFeXXc8TRqM7sfby71tJMHE5C/
 nkNye8RiGlw1mekO4AAyARag3Mijy8IvKBZxoBA=
X-Google-Smtp-Source: APXvYqzr4AwdDHnqHxHaJUmB733oBIGG0O3j5qyMBBQq3oNX/wKhu3+s7nE12oZGqDH5TteMUG4kYvjvae//G+/DZik=
X-Received: by 2002:a2e:b4b5:: with SMTP id q21mr7097869ljm.17.1576179918784; 
 Thu, 12 Dec 2019 11:45:18 -0800 (PST)
MIME-Version: 1.0
References: <20191212171704.23604-1-festevam@gmail.com>
In-Reply-To: <20191212171704.23604-1-festevam@gmail.com>
From: Fabio Estevam <festevam@gmail.com>
Date: Thu, 12 Dec 2019 16:45:07 -0300
Message-ID: <CAOMZO5CZEdZUbxwOMNyz7-4pyCeXABYOdPsimdzfkcbX_Y7GNg@mail.gmail.com>
Subject: Re: [PATCH 1/2] ARM: dts: imx51-babbage: Fix the DVI output
 description
To: Shawn Guo <shawnguo@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_114521_208496_11DD4095 
X-CRM114-Status: UNSURE (   7.98  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:244 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (festevam[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Rob Herring <robh+dt@kernel.org>,
 NXP Linux Team <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 12, 2019 at 2:17 PM Fabio Estevam <festevam@gmail.com> wrote:

> +       hdmi-connector {
> +               compatible = "hdmi-connector";

This should be "dvi-connector" instead.

I will respin this patch.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
