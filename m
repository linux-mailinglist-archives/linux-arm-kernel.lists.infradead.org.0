Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B6223172C06
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 28 Feb 2020 00:10:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gHGSKp6q0cXSSciuBLfmE2A63kydBIKj+xeFxwBxKpw=; b=dqqOQOKxIEkxj1
	3E0PrndE8ANVRpvy+iA11TZtmLWUHVvoy2XUZSd66Y7IlJRpuyzF3Li8df2TmeFa3VLGFruVEjmlk
	SSGX3xx1i5tOzkcHqYeqWbrJMMHPnc0oIj23J6AsfcEdx0u9pArDhj4qHbMswKDJaCshiQtqE+rSH
	tTsH7/fJy52quJ+pIaaBurVd7tVYimayRsamZ43LTbet8xt72dVAKeQGvff+MaikZvy7s19sCbZXc
	JH5a7sf6PpEP73d2rVJs8XV1ZoKIo6sTqoPxuhSOmKgdMousRljHi0X5x4KBogoDfUCIotNsIpt6U
	U1qYXDZVSb/dnssnzphQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j7SIM-0002ZF-4c; Thu, 27 Feb 2020 23:10:18 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j7SIC-0002L6-LC
 for linux-arm-kernel@lists.infradead.org; Thu, 27 Feb 2020 23:10:10 +0000
Received: by mail-pl1-x644.google.com with SMTP id u3so416370plr.9
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 27 Feb 2020 15:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=5tx0IPsAfgwG+TILN/HAZV3HlSTe9coOVs5pA2awyes=;
 b=cWdOaI6UdtYjvDDD78mRiRNwvqh4vFuOOlGGqiE2I6Dz3BJ20xeowNvUI2Wb2v27Yn
 jCmQ/RsSPS9CFnudpg/n87Vx0peDwnPbGM+Jl+K7UTATh2Slq3XcIrXKCp1cwyMdvcxu
 2A/9+o4vM8+eLh27IPtwmBmezC4QzHBLI3J3ccEMHbOeXHEOfamiT9WuSuw8OEqQptfS
 TPPGOuWkKH8SrWEZlDpgE2c4+T9o9os4NOtU1GEb+TpgyvvkF0cdbLZLBGaTt0fMRKdN
 LFkkwB9XlwrBhZqjKjps/Rt599MZQuKILqy/Wf3lZweoaZXVbTWOrGrU8FZhCaEz2NbB
 1AuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=5tx0IPsAfgwG+TILN/HAZV3HlSTe9coOVs5pA2awyes=;
 b=irQ+ESyEj6h9DPgHYRY78d5P0iqJM7jANc52VqGHfYLe2JkVgPteI1EalqT/pYk6/9
 1jAN9chHBHyWZNIEOH5Ysx/KJhAe+rU+GL5hZF/SufL56s4jB10hSpQ+yTI5PRTYOW+N
 pviBeUyuLv8vdPJm95QskoeHpyxv5LuLCBxUukBEcbgfuzDda8N//ufTEjYIf5AhSVXC
 PU9oIjKWm36ZdTYUNELwMh+6gmrCI7bEK0ZXHOo2APNiu18DZV590HDLSP/F6mnQBkp3
 gyfVfySaHI0XjdiNMphO9yVbeNFPo1K1IXxjk9hKfqWfHzMR52Gaw0m+dAVQOr9sf87U
 xnXQ==
X-Gm-Message-State: APjAAAUXkGNGUp0WzVYfOD3FGiESg7B6+bO5voDibd0JSqdinnZX9ln9
 5rXxICqIAPPnGMBJOG7cIBU=
X-Google-Smtp-Source: APXvYqw09IN/MZmhAU4E9H1T2aLymchy26JoyYAjLg/DFgC719gs6v2RNo0x5W+jgVkjs460YxXpuQ==
X-Received: by 2002:a17:902:7006:: with SMTP id
 y6mr1191261plk.84.1582845007630; 
 Thu, 27 Feb 2020 15:10:07 -0800 (PST)
Received: from taoren-ubuntu-R90MNF91 ([2620:10d:c090:500::4:d8f5])
 by smtp.gmail.com with ESMTPSA id u12sm7840988pgr.3.2020.02.27.15.10.06
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Thu, 27 Feb 2020 15:10:07 -0800 (PST)
Date: Thu, 27 Feb 2020 15:10:00 -0800
From: Tao Ren <rentao.bupt@gmail.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v4 7/7] dt-bindings: usb: add documentation for aspeed
 usb-vhub
Message-ID: <20200227231000.GA31175@taoren-ubuntu-R90MNF91>
References: <20200226230346.672-1-rentao.bupt@gmail.com>
 <20200226230346.672-8-rentao.bupt@gmail.com>
 <20200227165504.GA26955@bogus>
 <20200227224250.GC29420@taoren-ubuntu-R90MNF91>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200227224250.GC29420@taoren-ubuntu-R90MNF91>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200227_151008_707526_8E11CE2A 
X-CRM114-Status: GOOD (  10.98  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [rentao.bupt[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Mark Rutland <mark.rutland@arm.com>, Felipe Balbi <balbi@kernel.org>,
 linux-aspeed@lists.ozlabs.org, devicetree@vger.kernel.org,
 Andrew Jeffery <andrew@aj.id.au>,
 Benjamin Herrenschmidt <benh@kernel.crashing.org>, openbmc@lists.ozlabs.org,
 linux-usb@vger.kernel.org, taoren@fb.com, linux-kernel@vger.kernel.org,
 Stephen Boyd <swboyd@chromium.org>, Joel Stanley <joel@jms.id.au>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Chunfeng Yun <chunfeng.yun@mediatek.com>,
 Colin Ian King <colin.king@canonical.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Hi Rob,

On Thu, Feb 27, 2020 at 02:42:51PM -0800, Tao Ren wrote:
> Sorry I forgot to add you when including the dt-binding document to the
> series v4: will add you and all dt binding maintainers in v5 soon.

Just realized I already added you for the previous patch versions. Sorry
about the noise.


Cheers,

Tao

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
