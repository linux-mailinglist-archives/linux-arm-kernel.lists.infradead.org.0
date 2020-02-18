Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 813A8163337
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 18 Feb 2020 21:40:18 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=cc/3nJFRGaQXTZbtCrNT4CiTzBKG1+bn0uZJvlD/1Qs=; b=ujClzRNpSD1HGt
	stMwXP6T2WcaoTcGjQHUlfXeIn2OCvFySqdA6W3iJ/VSUWKnq03dvZH/HWyxJ8Oy/+g1Pcwg956aI
	kOLrYqbt1AA4Qs9enNfug8v88yPyMTZzhhqENVRRbBNB4wbpBOy/hnGwvAbBayzVI/HS2nL13LEaw
	B5rqeV9GFuOVAEqiQDsxJrN84MnnNmQa67BDdwZYmfbYBJ9KLYGXAP+dq+TB0h6Jv7+KdCBLjL49f
	d5VLDZK245TDVWJ16/giKZ+/Ers5/8F8VkDM1PP4RxBAHzWsuflH2mZooqHIkmDzH/o/g5BjHDLIk
	yCbeF9xloY0QBmE2YDzw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j49ey-0007uE-Nn; Tue, 18 Feb 2020 20:40:00 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j49eq-0007tk-7c; Tue, 18 Feb 2020 20:39:53 +0000
Received: by mail-ot1-f67.google.com with SMTP id z9so20893224oth.5;
 Tue, 18 Feb 2020 12:39:51 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=C8j0O76ayqbfqE0bVu8zQXNeOaxgxzZC+4WywF7J+iw=;
 b=GJqZxqNXicaA6RaP7WIIayVlw7vIIqEqJz1G2UjBLoTdpw9LwTQNrB6n43ad7vv6xi
 J71KIcKkFW8+5N/K4r0zeO52NynKK5WOF/hg60JtM8Up8fLxmqBcLYOGZKgAgX8y3I/F
 4pTg9viqrYq2nASx3Gz7ClzkLzLa1zWbztVwzpKo7SJ4WMEMqTW/8gxLpyL9282SweZI
 /z8n9voFb1IYFq24TZTJpU+mknTWUsQrn9DoOErERwWAvwCfFegCJE8gn0OMfPmNiT6g
 QUmYy0e7d3n3abyPmhrG4vYke/SiUHp3x3Pz9S2AtpwFxyXmgemUMP5zR5SD7JfkkIyy
 u5ZA==
X-Gm-Message-State: APjAAAUR4MX16ZQHDoH/Pru6aJ341LDcp3H1NDukVhFjqt87hg/yZpa/
 bNFxfYmmR4zcXhLjVHyEiw==
X-Google-Smtp-Source: APXvYqyH1p5MWdMBardwNwTmNs1F6hhPi3TUJe8KGhFk/oPzVltIMKXI9kg6VgPOTDZoEaMQDFRXnA==
X-Received: by 2002:a9d:116:: with SMTP id 22mr16069633otu.149.1582058390424; 
 Tue, 18 Feb 2020 12:39:50 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w197sm446590oia.12.2020.02.18.12.39.48
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 18 Feb 2020 12:39:49 -0800 (PST)
Received: (nullmailer pid 31148 invoked by uid 1000);
 Tue, 18 Feb 2020 20:39:48 -0000
Date: Tue, 18 Feb 2020 14:39:48 -0600
From: Rob Herring <robh@kernel.org>
To: Matthias Brugger <matthias.bgg@gmail.com>
Subject: Re: [PATCH v7 1/7] dt-bindings: clock: mediatek: document clk
 bindings for Mediatek MT6765 SoC
Message-ID: <20200218203948.GA28003@bogus>
References: <1581067250-12744-1-git-send-email-macpaul.lin@mediatek.com>
 <1581067250-12744-2-git-send-email-macpaul.lin@mediatek.com>
 <d606aeb2-5327-ff13-0043-e70ef37522f5@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <d606aeb2-5327-ff13-0043-e70ef37522f5@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200218_123952_271586_448940EA 
X-CRM114-Status: GOOD (  13.16  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
 Mediatek WSD Upstream <wsd_upstream@mediatek.com>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Michael Turquette <mturquette@baylibre.com>,
 Loda Chou <loda.chou@mediatek.com>, Fabien Parent <fparent@baylibre.com>,
 Mars Cheng <mars.cheng@mediatek.com>, Macpaul Lin <macpaul.lin@mediatek.com>,
 Will Deacon <will@kernel.org>, linux-clk@vger.kernel.org,
 Ryder Lee <Ryder.Lee@mediatek.com>, Weiyi Lu <weiyi.lu@mediatek.com>,
 Evan Green <evgreen@chromium.org>, linux-arm-kernel@lists.infradead.org,
 Chunfeng Yun <chunfeng.yun@mediatek.com>, mtk01761 <wendell.lin@mediatek.com>,
 Owen Chen <owen.chen@mediatek.com>, devicetree@vger.kernel.org,
 Joerg Roedel <jroedel@suse.de>, Marc Zyngier <marc.zyngier@arm.com>,
 Sean Wang <Sean.Wang@mediatek.com>, linux-mediatek@lists.infradead.org,
 Yong Wu <yong.wu@mediatek.com>, CC Hwang <cc.hwang@mediatek.com>,
 Stephen Boyd <sboyd@kernel.org>, linux-kernel@vger.kernel.org,
 Shawn Guo <shawnguo@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, Feb 18, 2020 at 05:47:25PM +0100, Matthias Brugger wrote:
> 
> 
> On 07/02/2020 10:20, Macpaul Lin wrote:
> > From: Mars Cheng <mars.cheng@mediatek.com>
> > 
> > This patch adds the binding documentation for apmixedsys, audsys, camsys,
> > imgsys, infracfg, mipi0a, topckgen, vcodecsys
> > 
> > Signed-off-by: Mars Cheng <mars.cheng@mediatek.com>
> > Signed-off-by: Owen Chen <owen.chen@mediatek.com>
> > Signed-off-by: Macpaul Lin <macpaul.lin@mediatek.com>
> > ---
> >  .../arm/mediatek/mediatek,apmixedsys.txt      |  1 +
> >  .../bindings/arm/mediatek/mediatek,audsys.txt |  1 +
> >  .../bindings/arm/mediatek/mediatek,camsys.txt |  1 +
> >  .../bindings/arm/mediatek/mediatek,imgsys.txt |  1 +
> >  .../arm/mediatek/mediatek,infracfg.txt        |  1 +
> >  .../bindings/arm/mediatek/mediatek,mipi0a.txt | 28 +++++++++++++++++++
> >  .../bindings/arm/mediatek/mediatek,mmsys.txt  |  1 +
> >  .../arm/mediatek/mediatek,pericfg.txt         |  1 +
> >  .../arm/mediatek/mediatek,topckgen.txt        |  1 +
> >  .../arm/mediatek/mediatek,vcodecsys.txt       | 27 ++++++++++++++++++
> 
> I think it's OK to put all the bindings, that only add one compatible in onw
> patch. But I think mipi0a and vcodesys should each go into a separate patch, as
> we will need a Ack by Rob for that.

Yes, and DT schema for the new ones.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
