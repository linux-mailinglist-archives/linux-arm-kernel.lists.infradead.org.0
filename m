Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E232C96B3
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  3 Oct 2019 04:24:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=qTm20Art2r8HWc11V7thK6dEgdRjZ4J0qto3K0dAMgQ=; b=COH/3V+0qLPNgt
	cedjqRr7tuTBjhkIo/ARIF27ag2RqtVxsMPWFxUx7RcOK2lyewFuPvnNZXdKoHpGYRQ2S5L3LYEZ2
	tYHv1dsYe3p7mcOljn98fRBCKhTC173Kqh3hQ5HyzsclFiJ84RchWq+d7Rk4Wq/L7clQqKzPwMFlD
	iCCxGDaLzOSoABImS8KzEBigIT3ecO2sS5OJf6j97vSjEuCCEPv39TnjxRI2Bdq7ZhcmjPPRC9Dqi
	WI7yMXvuC3+dc5c52KPXtSHbwF/tJ0y9z6uxTIGPBgZuE7xQDLEkvIUOFGlYazSOffdNj8EldCWDa
	Mb+sotwZkoM7NrTB1h0Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iFqmg-0007vS-4c; Thu, 03 Oct 2019 02:24:02 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iFqmX-0007ut-2J
 for linux-arm-kernel@lists.infradead.org; Thu, 03 Oct 2019 02:23:54 +0000
Received: by mail-ed1-f68.google.com with SMTP id h33so916314edh.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 19:23:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=i9FN6V4QrdzsUvVW/dG/yVdOmxthSwXB5hGzXqAq8Qo=;
 b=Lt0frLo/mb4pN/pPwqlC+bJ2eOwr+yN87loqQsyDDDJIp84TWI8RP2IhVCfF0Le/j+
 s+3IajtjsMRUHd/A72YIwsO5CSwMPaqt7YDAH101ei0ylecmMljHisijBJsaeF6Xkshq
 DTvzmY772J63BRFYh32RQJv/fo7PbxYwb21esfGH4RayucyQnU9pz2VlpqcbOf1c2AaJ
 A3g6iL1ZNbBujw1nZN1bQKZg0o/H6q2HMeL2pGuI87ITH+Nq3TEwUO62Vhok+FQThfMk
 HijIu8Vw2QlkH50djp/cifBHOyy3nanzzwocBviTql/KKHN6gsqUxhzSTcr1+VpovmbJ
 CqxA==
X-Gm-Message-State: APjAAAUDPM4nPpBfiLFQ3oHo2DGOZVhgFIhgeV0rB0FktyQVM4JkCR3s
 Eag0wYPhdJxEYXJilGCuQz+8gz07bSY=
X-Google-Smtp-Source: APXvYqzcsCgrDuIGWhuNdT7uxmohVSzIATjtJ+BfOQjNmV7e9cjKeJbDAiqdSApCIE68ep9Jk+QZjQ==
X-Received: by 2002:a05:6402:128c:: with SMTP id
 w12mr7134123edv.158.1570069430598; 
 Wed, 02 Oct 2019 19:23:50 -0700 (PDT)
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com.
 [209.85.221.46])
 by smtp.gmail.com with ESMTPSA id x4sm183372eds.87.2019.10.02.19.23.49
 for <linux-arm-kernel@lists.infradead.org>
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Oct 2019 19:23:50 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id o18so1049634wrv.13
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 02 Oct 2019 19:23:49 -0700 (PDT)
X-Received: by 2002:a05:6000:1184:: with SMTP id
 g4mr5030891wrx.361.1570069429798; 
 Wed, 02 Oct 2019 19:23:49 -0700 (PDT)
MIME-Version: 1.0
References: <20191002120645.102805-1-mripard@kernel.org>
In-Reply-To: <20191002120645.102805-1-mripard@kernel.org>
From: Chen-Yu Tsai <wens@csie.org>
Date: Thu, 3 Oct 2019 10:23:38 +0800
X-Gmail-Original-Message-ID: <CAGb2v64jK_Sr5D4g0qDP2tfDFaH6PscHCJ8be5zcdy+nqunS2w@mail.gmail.com>
Message-ID: <CAGb2v64jK_Sr5D4g0qDP2tfDFaH6PscHCJ8be5zcdy+nqunS2w@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: serio: Convert Allwinner PS2 controller to a
 schema
To: Maxime Ripard <mripard@kernel.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191002_192353_112994_CB7D2DC3 
X-CRM114-Status: GOOD (  10.90  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (wens213[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wens213[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
 devicetree <devicetree@vger.kernel.org>,
 Dmitry Torokhov <dmitry.torokhov@gmail.com>, Rob Herring <robh+dt@kernel.org>,
 linux-input@vger.kernel.org, Frank Rowand <frowand.list@gmail.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 2, 2019 at 8:06 PM Maxime Ripard <mripard@kernel.org> wrote:
>
> The older Allwinner SoCs have a PS2 controller that is supported in Linux,
> with a matching Device Tree binding.
>
> Now that we have the DT validation in place, let's convert the device tree
> bindings for that controller over to a YAML schemas.
>
> Signed-off-by: Maxime Ripard <mripard@kernel.org>

Acked-by: Chen-Yu Tsai <wens@csie.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
