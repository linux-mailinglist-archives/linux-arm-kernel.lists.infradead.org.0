Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A6D3616EC90
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 25 Feb 2020 18:32:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5Qo8uX1jDhXyVz2dzxmtRyDp4ECVzPKqB1qs7W0VWOc=; b=L0v2qOPW2CZEvo
	UgYFKPSG+Shrpp+aaLhYFLx2+UMg7Bub4tYUpT3ENlmot2OHkpVQqUlLPSyEaQ2WN+5+ZTce3s1be
	2LzIYno+ORIdbG2HvYvSz1M8jxsMA+AfsBhqxsdnvhdHdtULywaCKjLkcrvAjpgHkBaMtqwlSRPc4
	3P0bWIew8lAMvf4MfHcsuomCM7ZVD42kU2n7Btugi0h6MjoQ4TsNgef2s/x5rgY7WEUU8AuX82a0A
	G3JMyh6WcHbN8nOtDnpA+egj2wSPXKe/gE8NS/zHG7u/xzbsie75kRIV9QsybsrNqFFYPuKRPxB2K
	HZ3ZQVTkoxg5SYaOpfbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6e41-0007Te-9f; Tue, 25 Feb 2020 17:32:09 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6e3a-0007EW-1z; Tue, 25 Feb 2020 17:31:43 +0000
Received: by mail-ot1-f67.google.com with SMTP id r16so304888otd.2;
 Tue, 25 Feb 2020 09:31:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=QS0K6caHcm4ENnIoTn05eBvdx/7W9kVs7Tic77EWV3U=;
 b=hsIz/bxPRi4SG+/Vu44pJYjU95WbdEzG96YD0bUmWGHIr1QJIyFkwLvz6v/7NetUKc
 8RQ2ffdUFfzk5AbA/H4Vcqj7RUL3hwohsdrvhkTsnkhP5KbT5MR+lU76pQ1WZRNAL+nZ
 SeYYxjbCVI+D05v8JZS1MNkDgX3s+I4AkkzaLCWnmT46aJjGNtpQMR5Zn/f03UjSPpUh
 MLSSCsx1utNwqZ7gGwYAVn88BHYCzj+IOeLprRBVmnclQqNDyPgu9v2JK+HOhnQ6I7eo
 i4mTyiWkeFN/J+BzKms+AlumYx8/aYQzXpL+Q/Qr8iVIxExLhGWQ+tytwm6o/foAhmoJ
 kblg==
X-Gm-Message-State: APjAAAWmlbEdoT0NW7ONQhn8wypTLbWyOtbKNYLJrv3L5ojoUBL5oHg+
 14eeMPXLbYun2hIRVHrfNQ==
X-Google-Smtp-Source: APXvYqwB2+0s7QgvbO4hUWGFqaHT7kZzFUz3IlneivicGP+fTVhYNubNwANumJrX5ONqlNtblqsZ9g==
X-Received: by 2002:a9d:7559:: with SMTP id b25mr44320296otl.189.1582651899014; 
 Tue, 25 Feb 2020 09:31:39 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l12sm5915266oth.9.2020.02.25.09.31.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 25 Feb 2020 09:31:38 -0800 (PST)
Received: (nullmailer pid 2861 invoked by uid 1000);
 Tue, 25 Feb 2020 17:31:37 -0000
Date: Tue, 25 Feb 2020 11:31:37 -0600
From: Rob Herring <robh@kernel.org>
To: Chuanhong Guo <gch981213@gmail.com>
Subject: Re: [PATCH 0/2] rewrite mtk-quadspi spi-nor driver with spi-mem
Message-ID: <20200225173137.GA31830@bogus>
References: <20200215065826.739102-1-gch981213@gmail.com>
 <20200218125557.GD4232@sirena.org.uk>
 <CAJsYDVL03KJv7eewGekBPCfpbOuTX0tJ6qZaydvJnBDzZ5vEwg@mail.gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <CAJsYDVL03KJv7eewGekBPCfpbOuTX0tJ6qZaydvJnBDzZ5vEwg@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200225_093142_096472_F93FA678 
X-CRM114-Status: GOOD (  11.69  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS"
 <devicetree@vger.kernel.org>, Vignesh Raghavendra <vigneshr@ti.com>,
 Richard Weinberger <richard@nod.at>, open list <linux-kernel@vger.kernel.org>,
 linux-spi@vger.kernel.org, Mark Brown <broonie@kernel.org>,
 linux-mtd@lists.infradead.org, Miquel Raynal <miquel.raynal@bootlin.com>,
 Matthias Brugger <matthias.bgg@gmail.com>, linux-mediatek@lists.infradead.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Feb 20, 2020 at 07:58:06AM +0800, Chuanhong Guo wrote:
> Hi!
> 
> On Tue, Feb 18, 2020 at 8:55 PM Mark Brown <broonie@kernel.org> wrote:
> > This is an ABI break so you shouldn't be doing this, if the existing
> > binding works it should continue to work.
> 
> The missing spi-max-frequency is the only part preventing old
> device tree to work with this driver.
> If the goal is to make existing dt binding work, I could patch dt using
> of_add_property in v2. I saw similar device tree patching for legacy
> bindings in pinctrl-single driver.

You should should really only need 'spi-max-frequency' if the max freq 
is less than the minimum of the host and device max freq.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
