Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3384E90AB9
	for <lists+linux-arm-kernel@lfdr.de>; Sat, 17 Aug 2019 00:06:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ClakKhHiDBF5ER8Rq9ralWeCzJmA3yJOqE2yihI9cYQ=; b=ZvV5XJ6cDLJZC4
	zxz/rinyGVATAXCdYhguCLpZrpWO3KZ2bRS7bRWID0wLLeXgR/0Ubp5BeyGpzsEnuIcq7ZZJ8i+cd
	xZ5UupsKlfyiSj93wYm9GNENnR/DIk2i1a9dlKquK+9OPXNChAmoCD6h+N73JUAUA+6FAG+/7z8xi
	sbGVFSadmSdHqoYavduxZ8T1Q30HdTI3Obwm+JO9sl94bOUAGRTainJG17DQs2VYIjYcgJeEoiKqM
	xVzJIsU1yUrGIiISi2c0AnGi0X2zMD+4TcceX2g5lRBe/jbxocWprx6mDJegCte4OKHP58UkOBrGl
	er7drcHg6N8IW8lpnTgA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hykMe-0006iH-LE; Fri, 16 Aug 2019 22:06:28 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hykMV-0006hL-4h; Fri, 16 Aug 2019 22:06:21 +0000
Received: by mail-ot1-f65.google.com with SMTP id c34so10962097otb.7;
 Fri, 16 Aug 2019 15:06:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=c1XuEJXK9FfUQuWikaiU8aAHVF82tM2Ux510YBrnxGM=;
 b=Kk2oy/Y8jmVVw42gkG38jUyNnOMcNFFEVDLCyZMquYMpoST4ehgXgn3Qe5XYGidDrS
 7+rQR64xCx/864Vjzepr3s3AFpYsl9WY0iLCdtmSmG52eRJpinfI5ybhsmZE+XsNLqWV
 1/+2pu7mnvPUuSnuQghYuNW/28E2iCDdjxuljRL9CUpgu9ro99Ni8l/L1hf6ZTnWhEep
 feaaXucQecB673VPMWbT3+6Tifmet8978ry3Q74VOVKoY9XlerXiWPQJ5zvdZnHZLpsv
 5kMPlIxzG+V91pc2YrRXQ60W+O5qGrXL9GxLHRzCqwb3Nl3aEmARaExNkEu79SujBsm4
 X9Yw==
X-Gm-Message-State: APjAAAXNViikqhi4j0h2mVbS85ScNJQomZ/iUfiJYeBmbjM6Cr/DjDlV
 dzfIUQlou4na3JwKU1VFtQ==
X-Google-Smtp-Source: APXvYqzw+Cf+orS/G1HpiqFSkUwStTCMNUUOQ8ef5IhY/yKp8zTACJfDvod1DpPnqwCAmF6Bewtc/w==
X-Received: by 2002:a9d:5a82:: with SMTP id w2mr9825613oth.104.1565993177035; 
 Fri, 16 Aug 2019 15:06:17 -0700 (PDT)
Received: from localhost ([2607:fb90:1cdf:eef6:c125:340:5598:396e])
 by smtp.gmail.com with ESMTPSA id i63sm1909093oih.18.2019.08.16.15.06.16
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 16 Aug 2019 15:06:16 -0700 (PDT)
Date: Fri, 16 Aug 2019 17:06:15 -0500
From: Rob Herring <robh@kernel.org>
To: Bibby Hsieh <bibby.hsieh@mediatek.com>
Subject: Re: [PATCH v11 03/12] dt-binding: gce: add binding for gce client
 reg property
Message-ID: <20190816220615.GA25142@bogus>
References: <20190729070106.9332-1-bibby.hsieh@mediatek.com>
 <20190729070106.9332-4-bibby.hsieh@mediatek.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190729070106.9332-4-bibby.hsieh@mediatek.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190816_150619_186958_6CED3B89 
X-CRM114-Status: UNSURE (   8.17  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
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
Cc: devicetree@vger.kernel.org, Nicolas Boichat <drinkcat@chromium.org>,
 Philipp Zabel <p.zabel@pengutronix.de>, srv_heupstream@mediatek.com,
 Daoyuan Huang <daoyuan.huang@mediatek.com>,
 Sascha Hauer <s.hauer@pengutronix.de>, Jassi Brar <jassisinghbrar@gmail.com>,
 linux-kernel@vger.kernel.org, Daniel Kurtz <djkurtz@chromium.org>,
 YT Shen <yt.shen@mediatek.com>, CK HU <ck.hu@mediatek.com>,
 Dennis-YC Hsieh <dennis-yc.hsieh@mediatek.com>,
 linux-mediatek@lists.infradead.org, Houlong Wei <houlong.wei@mediatek.com>,
 Sascha Hauer <kernel@pengutronix.de>,
 Matthias Brugger <matthias.bgg@gmail.com>,
 Jiaguang Zhang <jiaguang.zhang@mediatek.com>,
 Bibby Hsieh <bibby.hsieh@mediatek.com>, linux-arm-kernel@lists.infradead.org,
 ginny.chen@mediatek.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 29 Jul 2019 15:00:57 +0800, Bibby Hsieh wrote:
> cmdq driver provide a function that get the relationship
> of sub system number from device node for client.
> add specification for #subsys-cells, mediatek,gce-client-reg.
> 
> Signed-off-by: Bibby Hsieh <bibby.hsieh@mediatek.com>
> ---
>  .../devicetree/bindings/mailbox/mtk-gce.txt      | 16 ++++++++++++----
>  1 file changed, 12 insertions(+), 4 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
