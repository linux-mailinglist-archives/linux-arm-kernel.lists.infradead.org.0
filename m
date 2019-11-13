Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F9DAFB15A
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 13 Nov 2019 14:33:02 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/DcBLC/YB9roMSDhVHu2WPe0TMEGwbvjhFX3XuLTdI0=; b=kMz575KBNDKJGn
	WqlJsZcsHjRCOeQ/uIQy1KYNf3LNighcn2lskCziRn5aXzxe4L0+pPN30vh2ck3PB4/EIScx1VKzm
	/5nc2MGSLH5nhGF9OkpE/KDtRNFIQ82XDlU//Iah7uFnekzUzGsVhOvnIiiTJpVRkimrLzsTLJc0l
	Jc46EINCX8ewm75VjlvMEH9rYZMwsRwlimb78At1FlYEdFv2YPIa/CxyFFLg/tUrGewlvhSQKcerY
	q8O73peOmmFDwwSj0WeuSi35o1b9LxtTm7SRNmapzEHZf0DhoJadPJN53n26+akIx1XGkqPZwS4f2
	bvowzeTpYWDC5oI95gtw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUslT-0005o9-JY; Wed, 13 Nov 2019 13:32:55 +0000
Received: from mail-oi1-f195.google.com ([209.85.167.195])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUslH-0005mA-It
 for linux-arm-kernel@lists.infradead.org; Wed, 13 Nov 2019 13:32:45 +0000
Received: by mail-oi1-f195.google.com with SMTP id s71so1730972oih.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 13 Nov 2019 05:32:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Lk9+rv9bDktt6DRVGNpmAxhVtKeiCwxhTxFd00GMb+I=;
 b=S7JBK+3b2IS6cTjL2j+CVqKdCfPNGqb0cQI3+QdgctjD8TpJVqXT3/qhh6kRPvK+4P
 auVjM0JN2uxqizIws6Qalya3KIk4d2/x4HCZ2JETsZiwGG0XP5CD/j+bSvL9kUZ5Brq1
 LcLz2Dq3D7G9rYD1kMfa6IRtHot4wJI6kYKPl7ikHdv5H2A9HO1JGWLELa9Q84sDTNej
 gcXCuKiHrzCFwKA1/3TZTAi+hsEgtoHIAhXdZ9gEJvfizQJeqZHAXTknZooMbtc/vLqx
 GQkRavK520WN8lOp8wlj4wQHRQCLyXVBTsLgsTpaRZ3d/Hlp+Bo49wLGMKLZ7TzxgZdK
 7/jw==
X-Gm-Message-State: APjAAAWe+QtOPU6H0YuYM1cuRztbIkvM/pQGxawcpGrsuWXUx5WwStlc
 PMWXUac1yu50BMaKm6jugA==
X-Google-Smtp-Source: APXvYqw2tbri9rKe6Dp1oo4+9uSk8fTtqbgkpkX6wRDrn3Q5ueaThTAGbFwKL6XvmVRkF0hYe+g8Dg==
X-Received: by 2002:aca:1b06:: with SMTP id b6mr3189030oib.25.1573651962718;
 Wed, 13 Nov 2019 05:32:42 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i195sm660281oib.55.2019.11.13.05.32.41
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 13 Nov 2019 05:32:41 -0800 (PST)
Date: Wed, 13 Nov 2019 07:32:35 -0600
From: Rob Herring <robh@kernel.org>
To: Christoph Fritz <chf.fritz@googlemail.com>
Subject: Re: [PATCH 3/4] dt-bindings: regulator: describe da906x buck
 regulator modes
Message-ID: <20191113133235.GA1952@bogus>
References: <1573121050-4728-1-git-send-email-chf.fritz@googlemail.com>
 <1573121050-4728-4-git-send-email-chf.fritz@googlemail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1573121050-4728-4-git-send-email-chf.fritz@googlemail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191113_053243_621457_3E1A8AA1 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.195 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.195 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org,
 Support Opensource <support.opensource@diasemi.com>,
 Fabio Estevam <festevam@gmail.com>, Liam Girdwood <lgirdwood@gmail.com>,
 Mark Brown <broonie@kernel.org>, Lee Jones <lee.jones@linaro.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu,  7 Nov 2019 11:04:09 +0100, Christoph Fritz wrote:
> This patch adds DT description of da906x buck regulator modes.
> 
> Signed-off-by: Christoph Fritz <chf.fritz@googlemail.com>
> ---
>  Documentation/devicetree/bindings/mfd/da9062.txt | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
