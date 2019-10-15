Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 268C5D840B
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 16 Oct 2019 00:49:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=h9nxld2hrgLCAuyJ1LbsP5W5U3EAmYCQmZQmxmKRV9w=; b=Z47wKxDi99DZmD
	9Veo8gs7HMLuUfArLflfQOw7C/yGCmnjJ976ZXH/8N5+IlxXxVAokbNC8uZteAnw/uHILjMpBvrDy
	Hon0UJYv6Ps6/ircblOmY3601Vt8I5ml0heFiAJSZYib/ege/dPXbGM3/jF8D5TfWFGmAS//QsxjA
	fJKfVgKSRUbN8gAdRlebCgfHaQEYh3T3Y66fD0ZxYsqhzX8yd4kRgwySK6sDkEhsB2GqF0MiKvmO8
	3gRhZGhxjDI2HRZRTOcuz5HnNPEl0bVxdkuZiAltE9ruPEw9RZMv+I7cAvxoCkbCPunFf1ylfTEBQ
	E3fSr3rzGzRyatSEoH9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iKVcq-0006EW-Ja; Tue, 15 Oct 2019 22:49:08 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iKVbc-0005ID-HD
 for linux-arm-kernel@lists.infradead.org; Tue, 15 Oct 2019 22:47:55 +0000
Received: by mail-ot1-f66.google.com with SMTP id g13so18438656otp.8
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 15 Oct 2019 15:47:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=L29Q7uBjfh2/8GkHTrSFKn53EJrq5c7glms3MlDnD+8=;
 b=QvQe4MlaHAMuemAuowPPPXmiAs968Zrz86YAm7HTBtLRL3R3t588gSXOsypa88ywhr
 6kq6OVD82p5bHzB2Qhtvp0H67W89XdDh+Vuf4/iSrUjXJXd6e5PEFqtK0EguUsRwvrZO
 Hh5GyWypNv6bkvBEJnWDP0Etrmzb3TmmvFEBqlAh/Xivsl7SlEmKtp95RAysvNOpRVKY
 WSCtLfqukuAPZVVPEXoR6cpKkp1e3e/iDlYoZXuX4FOWJX61OWoVoA6c+cTicFVs9npR
 A0B/PmgdydYWjY9QlZxQI45rvPQVwihoJH7yFuD73zIMulrL0WzhTQMwz3R7sWv4ZK5N
 HN2A==
X-Gm-Message-State: APjAAAUAatlegfZqJRVTIhzTArMSk0SXSJ3bZCVI7dI22tc2ePedYHcz
 5K+ZflD81hPpvRYAZNAkCA==
X-Google-Smtp-Source: APXvYqw5mXf86Bg84vSsRwYWEsXXpCgsWXJFetgM2DHfYHCqXad5KFgjFqh2gh6OrmOLdlLnZxsqHQ==
X-Received: by 2002:a9d:7147:: with SMTP id y7mr17614612otj.62.1571179671509; 
 Tue, 15 Oct 2019 15:47:51 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id a69sm6826546oib.14.2019.10.15.15.47.50
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 15 Oct 2019 15:47:51 -0700 (PDT)
Date: Tue, 15 Oct 2019 17:47:50 -0500
From: Rob Herring <robh@kernel.org>
To: Kamel Bouhara <kamel.bouhara@bootlin.com>
Subject: Re: [PATCH 2/3] dt-bindings: arm: at91: Document Kizbox3 HS board
 binding
Message-ID: <20191015224750.GA14460@bogus>
References: <20191011125022.16329-1-kamel.bouhara@bootlin.com>
 <20191011125022.16329-3-kamel.bouhara@bootlin.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191011125022.16329-3-kamel.bouhara@bootlin.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191015_154752_611483_68A91561 
X-CRM114-Status: UNSURE (   9.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
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
Cc: devicetree@vger.kernel.org,
 Alexandre Belloni <alexandre.belloni@bootlin.com>,
 Kamel Bouhara <kamel.bouhara@bootlin.com>, linux-kernel@vger.kernel.org,
 Ludovic Desroches <ludovic.desroches@microchip.com>,
 Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 11 Oct 2019 14:50:21 +0200, Kamel Bouhara wrote:
> Document devicetree binding of SAMA5D27 Kizbox3 HS board from Overkiz
> SAS.
> 
> Signed-off-by: Kamel Bouhara <kamel.bouhara@bootlin.com>
> ---
>  Documentation/devicetree/bindings/arm/atmel-at91.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
