Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0EF1271ED
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 00:58:50 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6tLbQ9Ip/R+vpXq6vdExr5NrY9MdpPRsa6V3A/t9pRo=; b=rXx8TWNNrty/Fp
	WD7wUSV+zTMuVujobHY+DlrqBQAw0HqE2w/P0eFl2vyV+jxZeJyxm3EfJsOdfQc/VjJLoPjn1ql0z
	dMzHriAWjBO06rIJEBapVA7c2akKnLP4VSkUzwURwMPs+7BQquFPylJT+OuIYCgDc6tWVaykkAUW0
	tByjd73l4UiZoO7Kr+XASnoCKh2g0C1ls8AIsHlxEgmi7LPLA4ddCNM9SA6HZcdVYbxJDp4G4rqFV
	Q85gqPK53xQ5LnPZsDOMXKoC/EgItclfZwntUZ669p9SHmWtY8I2Xo1ps5724Lt+H6L0j97/SmoFW
	4r6cb+ceEll7uLY7TIPQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5gu-00007T-JW; Thu, 19 Dec 2019 23:58:48 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5gj-000061-BA
 for linux-arm-kernel@lists.infradead.org; Thu, 19 Dec 2019 23:58:38 +0000
Received: by mail-ot1-f67.google.com with SMTP id h9so6822757otj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 15:58:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=SKAwiiMoPd9Tn6Gy7OjwN1wuLYFMvkJCnI+ZJNtjSoU=;
 b=fBkCxSfyU12Ay5ghJpCxims8rmiwr+r6+cbcajEJN5Nv+2pybPRq2JjPG2qog2ZAmL
 2ID63POSV3EL5dQ8DpJUVlaDbm+WDeOBtEkn2IjMR1ExZlBQGfKCdT/zBM6AQGSwbpBG
 M7iSEbOYloM1B3PgFUiw9YnebewzOHkTjkvtkEZp05ryuFyiTJml8Eiwhg5mXlA/NpQA
 UiLLyhejLpFbWFX2H3O8MUxNk4kyyxDSnr2b5cvPghm2EkM9ShlgdJ5PNi0seUHqBOP2
 NZnMpb/3+0sfOfdQWRlqGFV2gHiq+/YKJahiXf54CiWR1wtLBp8+yJY0M5w078XROUqd
 zeVg==
X-Gm-Message-State: APjAAAXDzeCI7MvuxdDzut3pw8h0Ic55exG6jmVCWe0WcBJ0WzbPkWSd
 U5PTwvVk5KgzFMxjerF4ew==
X-Google-Smtp-Source: APXvYqw55kJy7t/alrW7e/PbYwZqVLZg2Ona/8Txk725xAGbNLdEpYEc3R+GsZ69sJiZdx6g/aK/dg==
X-Received: by 2002:a9d:f26:: with SMTP id 35mr12255962ott.260.1576799914673; 
 Thu, 19 Dec 2019 15:58:34 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id e65sm2709408otb.62.2019.12.19.15.58.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 15:58:34 -0800 (PST)
Date: Thu, 19 Dec 2019 17:58:24 -0600
From: Rob Herring <robh@kernel.org>
To: Chen-Yu Tsai <wens@kernel.org>
Subject: Re: [PATCH 10/14] dt-bindings: bus: sunxi: Add R40 MBUS compatible
Message-ID: <20191219235824.GA12457@bogus>
References: <20191215165924.28314-1-wens@kernel.org>
 <20191215165924.28314-11-wens@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191215165924.28314-11-wens@kernel.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_155837_382738_2A02BCE0 
X-CRM114-Status: GOOD (  11.42  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Mauro Carvalho Chehab <mchehab@kernel.org>, linux-kernel@vger.kernel.org,
 Maxime Ripard <mripard@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
 Sakari Ailus <sakari.ailus@linux.intel.com>, Chen-Yu Tsai <wens@kernel.org>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019 00:59:20 +0800, Chen-Yu Tsai wrote:
> From: Chen-Yu Tsai <wens@csie.org>
> 
> Allwinner R40 SoC also contains MBUS controller.
> 
> Add compatible for it.
> 
> Signed-off-by: Chen-Yu Tsai <wens@csie.org>
> ---
>  Documentation/devicetree/bindings/arm/sunxi/sunxi-mbus.txt | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
