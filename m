Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CDDD13C81A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 Jan 2020 16:40:53 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=bMVjuI+lB6nzNNp2Eu0CG8a3x0uD5uBQmxLBlpgZakU=; b=JuAZKN9L4ugPsr
	yeMqPup/+yWyn9NszvngJRVQXIWbhVcYybTa0v3ID45+tmSlkZDnukWCL/Hc3qdeOazwpvi/JpQZa
	EAmgup2wqBPBA9gmorpFVGi/KvPhhy079rdyLOdm15D7pQnnZV0nQULN77gi8TpCxtTp3WJvk4q4j
	qH2tMS255EuR9Pjt0OdjVIvLgGr2uN++DSehwfiUriFsiU9D9uuJ5ZlRnV5TrbAsoLI/qg04N/ni/
	CCnvVuZcrHmNvb6rXM5w62uJsl6T8gYwolhRmySiHoUKrmR/AerYc9ZF8w7GWwHNAhPCUpWsi8qaw
	OcfJnUQtOc5mOOcZDmiQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1irkmf-0006pt-Nq; Wed, 15 Jan 2020 15:40:41 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1irkmR-0006np-PB
 for linux-arm-kernel@lists.infradead.org; Wed, 15 Jan 2020 15:40:32 +0000
Received: by mail-ot1-f65.google.com with SMTP id m2so11618921otq.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 Jan 2020 07:40:26 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=h8tviBIGxzG0M2SWVlzB/ZX7WYO/ibSFmw3TBS+98tw=;
 b=iJAu5FyNZUCmhRTN4XIS/3NhnOmqUiNnLAA2fZlKUGmsSawVn8Iwm/zhzy9+ZVZ3NE
 VIjfhEQq9btnXdbehadnslreY2mqSakOQex3oM3E0htWcGVcPdxasYcxlcG1yQ2Wrn0E
 EnhTXThO+kME8jwJixwzS6O+gOsOfXUr7j3LF93hbSgloJJe8QSQrItzk8O3Nk2iTEtt
 J7GvuD7W06B7fU6GalJZMlErFrIjrNVUEDduqqHr+mP04mosrjOLjTU4qhS3E+cHZQ6b
 +WGUD16iU6fxYb6Q+mweqIJmYw0oLeOTgNMJOSKswuDrV24AmfIHXWpWEWakHEAQbsWM
 pOng==
X-Gm-Message-State: APjAAAVJ+JxgRnf3oihHZiD0OOkWLzSgwAt7xGqkr8hWsgPH8/ZvVoOv
 ltrZjO/Be/YqpVwsZQYM7qW71Ig=
X-Google-Smtp-Source: APXvYqxtSflWz1hUIzf1VY1XFOwQ/CB2fC4hDt20NriqHuqZgGd0ZzA+FHoCXedYiXD/Eqy3Zp9ywg==
X-Received: by 2002:a9d:708f:: with SMTP id l15mr3298309otj.229.1579102825199; 
 Wed, 15 Jan 2020 07:40:25 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id t23sm5767422oic.28.2020.01.15.07.40.23
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 15 Jan 2020 07:40:24 -0800 (PST)
Received: from rob (uid 1000) (envelope-from rob@rob-hp-laptop) id 220379
 by rob-hp-laptop (DragonFly Mail Agent v0.11);
 Wed, 15 Jan 2020 09:40:22 -0600
Date: Wed, 15 Jan 2020 09:40:22 -0600
From: Rob Herring <robh@kernel.org>
To: Anson Huang <Anson.Huang@nxp.com>
Subject: Re: [PATCH V2 1/7] dt-bindings: fsl-imx-sdma: Add
 i.MX8MM/i.MX8MN/i.MX8MP compatible string
Message-ID: <20200115154022.GA10946@bogus>
References: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200115_074027_816403_C1A0A88A 
X-CRM114-Status: UNSURE (   8.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 UNPARSEABLE_RELAY      Informational: message has unparseable relay
 lines
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, ulf.hansson@linaro.org, marcel.ziswiler@toradex.com,
 angus@akkea.ca, srinivas.kandagatla@linaro.org,
 manivannan.sadhasivam@linaro.org, leonard.crestez@nxp.com, festevam@gmail.com,
 richard.hu@technexion.com, andrew.smirnov@gmail.com, rabeeh@solid-run.com,
 Linux-imx@nxp.com, devicetree@vger.kernel.org, s.hauer@pengutronix.de,
 robh+dt@kernel.org, daniel.baluta@nxp.com,
 linux-arm-kernel@lists.infradead.org, aisheng.dong@nxp.com,
 rjones@gateworks.com, shawnguo@kernel.org, linux-mmc@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-spi@vger.kernel.org, vkoul@kernel.org,
 broonie@kernel.org, kernel@pengutronix.de, dmaengine@vger.kernel.org,
 jun.li@nxp.com, cosmin.stoica@nxp.com, l.stach@pengutronix.de
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 Jan 2020 13:33:16 +0800, Anson Huang wrote:
> Add imx8mm/imx8mn/imx8mp sdma support.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> New patch
> ---
>  Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
