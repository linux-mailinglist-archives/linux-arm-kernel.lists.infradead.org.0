Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6452E268E
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 24 Oct 2019 00:44:18 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ol3OpQ0SVYM/zJGiUY30WExeJkrGa+GPf1XJvojGwSA=; b=O9WGNwmW5WhckP
	GezAp9Z/yC8UoPuxfPwZD2dL3thoV7MDWstAeDxDY59WnvpHxEcguLh+05xbuUhos+rWmda257lLj
	Jod8eonSONA+ynLOxdPSVLTCW7St26i2lCz4rRyke4HkfIbOtTSH9g7Fk19xYl/myA1UHdDKxRs2G
	tCGMoN/n18JXqVq5t/gkR22sl8ovpVk5i2wtt5jcuf1uaaePBOFu3GNPB0MhlV5ddL42iI97RqJrf
	3hhXzj0lm7xfnGag+19kaSpJJgYjFHiWo1NI9agNdhctAYY2GGNcLO816ESTaLll2dDa8dK8j1qME
	jGxkIVJU2ypQUOCAcgsw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iNPMV-0000yB-Iu; Wed, 23 Oct 2019 22:44:15 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iNPML-0000xi-NB
 for linux-arm-kernel@lists.infradead.org; Wed, 23 Oct 2019 22:44:07 +0000
Received: by mail-pl1-x642.google.com with SMTP id y8so2305705plk.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 23 Oct 2019 15:44:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=0x0f.com; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=wJ06TDHk8fanWw9hIr0dlUGtwGT9heBDo9sS1XVH1y0=;
 b=Q0YbQZaH/L4srXxXyvDFIWx1ysQxXlP55psWE1LNH+IjT01Ljw0z9KfO9RWy/h87Cz
 8IXn5rrkI8UlEKeYlzgkWymmy0BAdnOPJdRvcfutt6P0d/D3CHuk3De3Bamw3FYKpbsc
 qTwUeoKbLdBtOVM+FGvd6CRdi/gbxV332QVTs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=wJ06TDHk8fanWw9hIr0dlUGtwGT9heBDo9sS1XVH1y0=;
 b=KJ9rbPpBkc/xk6hMDkgugDijsv6AZimnqvP50CnWsSgtV3ue2TWSiN8L/LMw66Jmjm
 /bEUK3eHyYK6TS+rfUsh9hFYgUHQ6iXDv05hR8yhs25XHXYVlkmFHQajcIsr74rYlZ6Y
 LHeIoKmFAkQaWbkZu6tvl+rQH2UBtY5iOnpG2y0vydJ2UQVi1uFNGkci8K2KLOvCbGYr
 ugYOV0K16j/TYLEm1JUXuKkaR3osylAfE7/PZZuegTCLYsAnRqBsDqOUvWHlazqT20dK
 jbIdjaLcZAv8ezx1ZCI/eQPclraV27CwqY/VpH/6escBPVazQOzZy0UUJmFJosWeVeQJ
 QXfQ==
X-Gm-Message-State: APjAAAWajj5QzmCLpTxT1Qzy4CRJY/2sKpOK65hNNtzbuQIjyusgoDmt
 STLSh5QwLGDNy1qkLXAocKfm/A==
X-Google-Smtp-Source: APXvYqxMMvMklUkKQ1AwFgso9IZAHy69PdeeT4onSQJXGUydKwe7gOr+jUTNMnGWoDo4Gxti1z0uCA==
X-Received: by 2002:a17:902:8691:: with SMTP id
 g17mr11650908plo.231.1571870644218; 
 Wed, 23 Oct 2019 15:44:04 -0700 (PDT)
Received: from goma (p1092222-ipngn200709sizuokaden.shizuoka.ocn.ne.jp.
 [220.106.235.222])
 by smtp.gmail.com with ESMTPSA id h4sm25347209pfg.159.2019.10.23.15.44.02
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 23 Oct 2019 15:44:03 -0700 (PDT)
Date: Thu, 24 Oct 2019 07:43:58 +0900
From: Daniel Palmer <daniel@0x0f.com>
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH 1/4] dt-bindings: arm: Initial MStar vendor prefixes and
 compatible strings
Message-ID: <20191023224357.GA26445@goma>
References: <20191014061617.10296-1-daniel@0x0f.com>
 <20191023200228.GA29675@bogus>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191023200228.GA29675@bogus>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191023_154405_864519_EBE32F7B 
X-CRM114-Status: GOOD (  10.26  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 23, 2019 at 03:02:28PM -0500, Rob Herring wrote:
> > +# SPDX-License-Identifier: (GPL-2.0+ OR X11)
> 
> (GPL-2.0-only OR BSD-2-Clause) is preferred. Any reason to differ?

I used the sunxi file as a template and thought they had some
reason to do that. I'll change it to just GPL-2.0.

> > +      - description: thingy.jp BreadBee
> > +        items:
> > +          - const: thingyjp,breadbee
> > +          - const: mstar,infinity
> > +          - const: mstar,infinity3
> 
> infinity vs. infinity3? What's the difference? It's generally sufficient 
> to just list a board compatible and a SoC compatible.

Apart from some very slight differences (max clock speed, different PWM block)
they are the same and the PCB for the BreadBee can take either the msc313(i1) or
msc313e(i3). My v2 patch will remove the mstar,infinity line from there and move
it to a second board called the breadbee-crust to handle the i1 configuration.

Thanks,

Daniel

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
