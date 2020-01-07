Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BD748132E69
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 19:29:57 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5IOoHk111bQN0OB8W4+F3FSUhcANDsxpfQc4h+vkPXE=; b=E/zxbDKTt/emr+
	THkZzMG+8JQpsw0SNbj8Zf7F2HMaUo440NjgyIpXbmlFhFz4wjzjDfzzwkQQdV+KDMzEZJkFzvZ/V
	S5huY87Log+PU33hsFwdV7Z9MhRLMR7iNJxJDuAg7Er+R5gjq1twrIM/uwRwqQmAN714qud3chaCW
	WaI6syrNBjkhBPxdfhSf9iQmCYSjh7/YhzwrmzuSFh5wpifmIeS5qWUNntNseqL0G3CGodsDLNyoI
	+dqjVUEnomLjhhEkFFmRQkv4h1UBBVoAfp+z14DhuGOM/iRShTMD1jkYMgqHzo/+BookhVXkqGMUN
	6YPtSXNBEcAPWtGV43Aw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iotc3-0000ub-Iu; Tue, 07 Jan 2020 18:29:55 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iotbu-0000tZ-Pl; Tue, 07 Jan 2020 18:29:49 +0000
Received: by mail-pl1-x643.google.com with SMTP id f20so52820plj.5;
 Tue, 07 Jan 2020 10:29:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=sender:date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=R00xNPsCF8UW/szKUy4WCcj0M7xSEsY8VrV3QDe1Oo0=;
 b=CYAMnJvk6SbEGhlwkKO0AU34UPtn7TFji5Ps19RbS8eRYq8wo3OUwKlS4XmNeopGmw
 QiFXRSNjOagwTIFztbuUUjbF6qBGjG5EqWUDnsTeDPvXGaymxUKOIkhLgXUhBk+u31iH
 KIugAhILIf72swrEM10d9I+R/hnEGyBQRfbBvyp9X5+3vTsquRDSlYzvCKLyAO71jQqU
 BRua/j4i2V6W3EhyxNLWaidgQSdHiAZQIMFRrHPCkrJLvjxQ+6Fva0moX1B3Za4LNly3
 grRreqi+zjsyRIBFuQd8pvJSluNizRXJPQij7kV+xmds96HDCKPquqbMibZf42oeDtAx
 5Oeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
 :references:mime-version:content-disposition:in-reply-to:user-agent;
 bh=R00xNPsCF8UW/szKUy4WCcj0M7xSEsY8VrV3QDe1Oo0=;
 b=XXozdpHQPPJeBXyKzHUkjDY85Z7rCb+7VsNd9XZpB25L+pO+WKe7UaJZwVzEnkXK4h
 cQGqX6tsrDpE+rIqtPfYdZhPigMK9crFYR6+105wufg8/DfRDqRpIhPDm5cA7c0gW4rZ
 IfInpZnHdG094A3Om3Rj7BIa3/IBE3tWLcnbyh/9czHhBCMaP4MknQ+oiXRHSVKVCm0X
 wwU0R/B66Jlsz8MimZVbPGudATB9MJThTyjd+sYq3Z3TRMyjUZlSbuOUJIS34uRlWyhy
 1d4F61g0YUjlpK9VUKNrCL7n4vDzBy08PbIdAVzlQTrn9I5NRIvHDV+GraPyj13NqAe2
 p26A==
X-Gm-Message-State: APjAAAVdgs9t4rE1dRr9EeidKCBdZQSfHA+e63K9sA2VkfPPN1wjO0Cq
 g3X6fFk5icm+Qq3GYWxQ3gU=
X-Google-Smtp-Source: APXvYqwFTbjgTXASmix+3u3414wvuMf8vHp4E+Qp8r0vx/3MvZxQpaU4ZHNyie4f5G1akERvond2Jw==
X-Received: by 2002:a17:90a:26e1:: with SMTP id
 m88mr1162523pje.101.1578421786005; 
 Tue, 07 Jan 2020 10:29:46 -0800 (PST)
Received: from localhost ([2600:1700:e321:62f0:329c:23ff:fee3:9d7c])
 by smtp.gmail.com with ESMTPSA id u3sm436809pga.72.2020.01.07.10.29.45
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 07 Jan 2020 10:29:45 -0800 (PST)
Date: Tue, 7 Jan 2020 10:29:44 -0800
From: Guenter Roeck <linux@roeck-us.net>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v10 1/2] dt-bindings: mediatek: mt8183: Add #reset-cells
Message-ID: <20200107182944.GB22909@roeck-us.net>
References: <1578280296-18946-1-git-send-email-jiaxin.yu@mediatek.com>
 <1578280296-18946-2-git-send-email-jiaxin.yu@mediatek.com>
 <20200106215721.GB31059@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200106215721.GB31059@bogus>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_102946_838575_7C6E7F7C 
X-CRM114-Status: GOOD (  14.17  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (groeck7[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (groeck7[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: devicetree@vger.kernel.org, yong.liang@mediatek.com,
 freddy.hsin@mediatek.com, linux-watchdog@vger.kernel.org, sboyd@kernel.org,
 linux-kernel@vger.kernel.org, Jiaxin Yu <jiaxin.yu@mediatek.com>,
 linux-mediatek@lists.infradead.org, p.zabel@pengutronix.de,
 yingjoe.chen@mediatek.com, matthias.bgg@gmail.com, chang-an.chen@mediatek.com,
 wim@linux-watchdog.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Jan 06, 2020 at 03:57:21PM -0600, Rob Herring wrote:
> On Mon, 6 Jan 2020 11:11:35 +0800, Jiaxin Yu wrote:
> > Add #reset-cells property and update example
> > 
> > Signed-off-by: yong.liang <yong.liang@mediatek.com>
> > Signed-off-by: Jiaxin Yu <jiaxin.yu@mediatek.com>
> > Reviewed-by: Yingjoe Chen <yingjoe.chen@mediatek.com>
> > Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
> > ---
> >  .../devicetree/bindings/watchdog/mtk-wdt.txt  | 10 ++++++---
> >  .../reset-controller/mt2712-resets.h          | 22 +++++++++++++++++++
> >  .../reset-controller/mt8183-resets.h          | 17 ++++++++++++++
> >  3 files changed, 46 insertions(+), 3 deletions(-)
> >  create mode 100644 include/dt-bindings/reset-controller/mt2712-resets.h
> > 
> 
> Please add Acked-by/Reviewed-by tags when posting new versions. However,
> there's no need to repost patches *only* to add the tags. The upstream
> maintainer will do that for acks received on the version they apply.
> 
> If a tag was not added on purpose, please state why and what changed.

v9 and a couple of versions before that did not include the update to
the bindings file. I got lost in the many versions and don't recall if
that was ever tagged as Reviewed-by: in an earlier version.

Guenter

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
