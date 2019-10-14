Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 03A5FD6837
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 19:18:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dR0FrSE7VtCD14BJpTu6gL0vtar+DHlWsEu95uTO9Bw=; b=aNVoMwFJLPC5Vj
	MWaRKwr8PAHVuHS/TiuO7NK8R4UGOvo/1+iXNKZ6Sv4U1VhZACTL8l0LohnAexGPoeisuJNEbCcf7
	GwhnDSpXdJls+vLTJ9KiKYm1SkmGWYtNT/dx7idfwBxf2cMp5ypS1zas354F6hygGddllqafkqn0W
	7N1yEOTqOIJd0SOkQpeSgQFo+/j4BnY+ASX8bzSkTr5bG4RZ7O3cntLiOEQJq6O2G/8CE3qkJkIN8
	P3Y0RDZ3ATtRCSRe9ReSwKCBoDRDPIld5AW6RzeOVEzu4VXJ0HVCVJQhC085YwIYVO+BW9HL+q6lp
	zut2/rxr7BkXWVGqSvgg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iK3zO-0001zl-UE; Mon, 14 Oct 2019 17:18:34 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iK3zF-0001zE-Pg
 for linux-arm-kernel@lists.infradead.org; Mon, 14 Oct 2019 17:18:27 +0000
Received: by mail-oi1-f193.google.com with SMTP id k25so14352372oiw.13
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 14 Oct 2019 10:18:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=woBF22Zo3gSgEXnFBjrpZBAJnkenQ3ulqN1pWDAJfBI=;
 b=T7If1aa2ZlLvRoi78B1wg4BoIY8ez8FhsTHLdNDJ7l3Vm2ll4oyiqkRM/IA9v+y3s2
 RQwfNNDk7Gr1gyGiFTaMWekCLlUEYBbNqOu/45alBJY3PktziU6CYlMgXqF4bGLYYCLO
 zaRN8vYoyQUQusPuNNcuNZ3KBj6hlvPtOEzLAKJ6cdUeDgBtpH6upu6NqEzMEU04bY4o
 cAhTUhV0N7z9k0CaQAxHWb+Gx9wEN/fLVIPQRp0bgsUi4ul6jbotQ+GbBA79TNtZ2odv
 I9m0iEWVQodHKdEGYQ2GlMr9mzX6E+d3N3UgtKzFtTl3vxvp5Nhz0j5v/gu7h3lGQYHr
 3M6w==
X-Gm-Message-State: APjAAAWoGaRngRlHrro/LvRSxCh5saIn5CiJ6cXGsZjbAjkJembotxN7
 UwZ2G2J7HjrXbAAmsPLAKA==
X-Google-Smtp-Source: APXvYqyr/1vK3/H8M3hQGrLJtcS3+95Pa3jcICVvxpRAUDlmEdNi7d5eXvtMuY3v1sivDQUgc/Dw4w==
X-Received: by 2002:aca:4994:: with SMTP id w142mr25900821oia.88.1571073505046; 
 Mon, 14 Oct 2019 10:18:25 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id v6sm5638740oie.4.2019.10.14.10.18.23
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 14 Oct 2019 10:18:24 -0700 (PDT)
Date: Mon, 14 Oct 2019 12:18:22 -0500
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v3] dt-bindings: media: Convert stm32 dcmi bindings to
 json-schema
Message-ID: <20191014171822.GA7421@bogus>
References: <20191014092021.24020-1-benjamin.gaignard@st.com>
 <20191014092021.24020-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014092021.24020-2-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191014_101825_827704_818EE6EA 
X-CRM114-Status: GOOD (  10.32  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 philippe.cornu@st.com, linux-kernel@vger.kernel.org, yannick.fertre@st.com,
 robh+dt@kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 hugues.fruchet@st.com, mchehab@kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 linux-media@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 14 Oct 2019 11:20:21 +0200, Benjamin Gaignard wrote:
> Convert the STM32 dcmi binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> changes in v3:
> -use (GPL-2.0-only OR BSD-2-Clause) license
> 
> changes in v2:
> - use BSD-2-Clause license
> - remove useless dma descriptions
> - fix clock property
> - add additionalProperties: false
> - fix reset indentation
> 
>  .../devicetree/bindings/media/st,stm32-dcmi.txt    | 45 -----------
>  .../devicetree/bindings/media/st,stm32-dcmi.yaml   | 86 ++++++++++++++++++++++
>  2 files changed, 86 insertions(+), 45 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/st,stm32-dcmi.txt
>  create mode 100644 Documentation/devicetree/bindings/media/st,stm32-dcmi.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
