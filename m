Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1A28F3E89
	for <lists+linux-arm-kernel@lfdr.de>; Fri,  8 Nov 2019 04:51:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=73O85btq54Ew/Ubimn8gZKIM5A8XRqkk9pmx2R2/ZVQ=; b=EkgIfI8c+3MluO
	V3D+1iUeOzWXwlJnMmTk39gd795B/FAQTMALt7Y9KHlmSCzEvWPivtcaPBmNde1cLfY+OOrplrJK3
	RYFeKocC9Tn5FECYewElYOOm2RpVkLJGtO9+2GmDS4HXswLQ0Y50twTWQMdWfXAgdbrmuaY/Cl8pz
	pBhyUpDH2mW+UHC+lOLa6bTrqC42EoljYAAuVX9uLDqLvTNskPp1c8m8OqS72YVwSnehjUzqhFvo7
	FvdXQ9ai7gaTcv8DjjHmukNLkkLL3N034IH4CRl8VDLjpdx1NGj4PKRiq59UbFL//k9yZKQCdabZB
	RpxFLJoHKZOxm7oq0YxQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iSvJI-0002Ox-Fz; Fri, 08 Nov 2019 03:51:44 +0000
Received: from mail-ot1-x343.google.com ([2607:f8b0:4864:20::343])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iSvIt-0002FK-G1; Fri, 08 Nov 2019 03:51:20 +0000
Received: by mail-ot1-x343.google.com with SMTP id t4so4086689otr.1;
 Thu, 07 Nov 2019 19:51:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=rhuDy7k1YQ8fNXLKpPn/sc6C1FLdaiYWgUMBjQg/bFo=;
 b=E0tKYfwwrZDCdsh04gyklOIRSpMjrcZf7XFyRLcpx8x0pxA4Humn44TwuUQLZfK/1b
 DIJAUa72iHHl3W8JOk9gC0IoqX+RzQFpVTlLZbUsAIV+H8JULQJjB7WF+xoI4A7ibEeb
 x4OmdARMasC/SpvW/Qxj/m8VVxYvMnAHuzB5pYghTduxlcAih6ob712gkfAOl0RUFWfv
 6bj1niVXsQ8yZlejOg7g+4vxz+99Xjublz3dvnsnE+PC00dP5xGPe1roWntjK5FEmWsz
 JgDdCFE8U/7BdNPxiBYtudoex4LpRAacGADeazvwjutcDrZ0v61hhKDNtV75Kab+ZWHC
 TCZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=rhuDy7k1YQ8fNXLKpPn/sc6C1FLdaiYWgUMBjQg/bFo=;
 b=cw/FRrgWSYpSVH1Kf3WEj0pxaBPlFS3UZvYpm1+Pj36DKzSO/1JDSR/tW6wLg5XJOr
 cur6hQccijyxfscwtArGr7Q+49t9t2ue8hAgHP+w2RdQv7ZW1E+LFlB34SL40/cm1GHB
 5osdTKDrqCtJ6e24mHR0iydDElcgoCHiDqFBA63NPdQ1LZJ5zwEOmwlZ7hXBawZte/ft
 cxlxMKr9QDCSpnI9bafEs7bwMuXuhbZrtvT4/hafzozz2M9OWXjYRlk5S5glcPMYSbEV
 GW3yu0dIf0ZR7TeHv2laBPHWVHau1BxCKnsTdfKE7RVvPiguWXunRKGaPJpXFKTqe8OM
 OYsA==
X-Gm-Message-State: APjAAAUKqegDK3YjaZujtTymS/Z6emimlwR/JyZKWVFlumrpqRCOUYhV
 GHPRUSeUJnqspOM1RzFPd2xfcSEGgCZ/S5a1NEnF3HBh
X-Google-Smtp-Source: APXvYqy2t/kO5ZRGsn5pm8g1lSt5wtAL2Dz+sn0BJoP+m3eFEMrEvRM44WhCuk2uQLh+OC2wKvuDp/aXC2cBaaLmIIw=
X-Received: by 2002:a9d:6b81:: with SMTP id b1mr6069691otq.70.1573185077890;
 Thu, 07 Nov 2019 19:51:17 -0800 (PST)
MIME-Version: 1.0
References: <20191106140748.13100-1-gch981213@gmail.com>
 <20191106140748.13100-3-gch981213@gmail.com>
In-Reply-To: <20191106140748.13100-3-gch981213@gmail.com>
From: Chuanhong Guo <gch981213@gmail.com>
Date: Fri, 8 Nov 2019 11:51:06 +0800
Message-ID: <CAJsYDVJ8zFBJBQHVgyWE1joqGhsq9AibKqrgCZToySPT3p0PnA@mail.gmail.com>
Subject: Re: [PATCH 2/2] dt-bindings: mtd: mtk-quadspi: update bindings for
 mmap flash read
To: linux-mtd@lists.infradead.org
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191107_195119_556765_5183A98A 
X-CRM114-Status: UNSURE (   8.64  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (gch981213[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (gch981213[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:343 listed in]
 [list.dnswl.org]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Tudor Ambarus <tudor.ambarus@microchip.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 Rob Herring <robh+dt@kernel.org>, linux-mediatek@lists.infradead.org,
 Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Brian Norris <computersforpeace@gmail.com>,
 David Woodhouse <dwmw2@infradead.org>, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi!

On Wed, Nov 6, 2019 at 10:08 PM Chuanhong Guo <gch981213@gmail.com> wrote:
>
> update register descriptions and add an example binding using it.
>
> Signed-off-by: Chuanhong Guo <gch981213@gmail.com>

I'll abandon this patchset and implement DMA reading instead.

Regards,
Chuanhong Guo

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
