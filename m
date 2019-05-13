Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9507A1BC39
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 13 May 2019 19:51:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ECTKn0SCv8d/pBTQKlKqTH3/ezUBC+lq+l2bVlkbEIE=; b=SR9/Ekh4L4jFjm
	0RwLArR0MIrzF+TRwkPwD8mBGxJmmjyjdtK/We0aXUvHJQqRhKsgzfedBWEaa6TyUozXziruYolS5
	+374J9XNurB/g/SWrtNSY+96sA1emYhxecGIc9ZigBXJwSNHipMOhoFH5+uyE8CoArAmY5MXryngX
	jtw9egfvVhm6CjV9hAFRrPd9ttXpbON3v/9zECKalguksKGITyvE6ViwhGo+C/DSpFvudB60FnkVN
	QKkjlfgYjlxEsBVijYz7m0can4z52qv3+Yu3MXXWEitjW9GMBCyNvwuDZlx3KS3S/zh2ETXHWuvSU
	brxzgg8a+iUcaYG2erqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQF6k-0008AS-Fc; Mon, 13 May 2019 17:51:26 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQF6d-00089N-GQ
 for linux-arm-kernel@lists.infradead.org; Mon, 13 May 2019 17:51:20 +0000
Received: by mail-ot1-f68.google.com with SMTP id r10so11873928otd.4
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 13 May 2019 10:51:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=m4N4IZgDvzO5+VbOkAL+/qLpzVDWLu+YalUcmqAEWjc=;
 b=WR2pFk0iD4cU2OrVILYU87JrWahMX2t0Lu1DklRTYTHm1zhae83bF2MgCjGFcEPZ3h
 xP0HoYn81QX4LLz9WjioUBky5lKKFfx9UOv2s5OpoV5J4icyEEB8/eZlETDKPWdHZxT6
 nfRHu5dJCsmwuglEBC1bcuId3v/Z+yCwqzAcoSY51ptltklSpecufX4mj+uJ3OUzNG8e
 ElyAi/gdPmRa7Fl6f3YtIqRCgkYIIhjt9V+MUTshfpEQNac9DR6auzitKSFiFlWmRbJw
 YXdNGfrNU2alDvIhsYR6s7F51Ol3LKk4ZVmI3bLYUrIdkG7RhN+qnIbGUpGGJccPSM0/
 F/2A==
X-Gm-Message-State: APjAAAWDdNFwzH5KBKJwe6z5jh6llNIVHMtLelGFH4kK/OLLixc5L8+T
 uFpLzvmgjYzUfBHOjq3BJw==
X-Google-Smtp-Source: APXvYqyi6vDqkZOF8NsHPlQ7yDvigtmGZCYFZkAc4wdlsemMKX21ODIa4vUe8/dokESav8OUMfKvnw==
X-Received: by 2002:a9d:6d8c:: with SMTP id x12mr11381060otp.34.1557769878486; 
 Mon, 13 May 2019 10:51:18 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id x21sm576703otk.4.2019.05.13.10.51.17
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 10:51:17 -0700 (PDT)
Date: Mon, 13 May 2019 12:51:17 -0500
From: Rob Herring <robh@kernel.org>
To: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
Subject: Re: [PATCH v3 4/6] dt-bindings: soc/fsl: qe: document new
 fsl,qe-snums  binding
Message-ID: <20190513175117.GA22288@bogus>
References: <20190501092841.9026-1-rasmus.villemoes@prevas.dk>
 <20190513111442.25724-1-rasmus.villemoes@prevas.dk>
 <20190513111442.25724-5-rasmus.villemoes@prevas.dk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513111442.25724-5-rasmus.villemoes@prevas.dk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_105119_547926_834CB818 
X-CRM114-Status: GOOD (  15.86  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Christophe Leroy <christophe.leroy@c-s.fr>,
 "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Li Yang <leoyang.li@nxp.com>, Scott Wood <oss@buserror.net>,
 Joakim Tjernlund <Joakim.Tjernlund@infinera.com>,
 Rasmus Villemoes <Rasmus.Villemoes@prevas.se>,
 Mark Rutland <mark.rutland@arm.com>,
 "linuxppc-dev@lists.ozlabs.org" <linuxppc-dev@lists.ozlabs.org>,
 "linux-arm-kernel@lists.infradead.org" <linux-arm-kernel@lists.infradead.org>,
 Qiang Zhao <qiang.zhao@nxp.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 13 May 2019 11:14:58 +0000, Rasmus Villemoes wrote:
> Reading table 4-30, and its footnotes, of the QUICC Engine Block
> Reference Manual shows that the set of snum _values_ is not
> necessarily just a function of the _number_ of snums, as given in the
> fsl,qe-num-snums property.
> 
> As an alternative, to make it easier to add support for other variants
> of the QUICC engine IP, this introduces a new binding fsl,qe-snums,
> which automatically encodes both the number of snums and the actual
> values to use.
> 
> Signed-off-by: Rasmus Villemoes <rasmus.villemoes@prevas.dk>
> ---
> Rob, thanks for the review of v2. However, since I moved the example
> from the commit log to the binding (per Joakim's request), I didn't
> add a Reviewed-by tag for this revision.
> 
>  .../devicetree/bindings/soc/fsl/cpm_qe/qe.txt       | 13 ++++++++++++-
>  1 file changed, 12 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
