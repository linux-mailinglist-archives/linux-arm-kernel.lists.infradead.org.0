Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 40329166850
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 20 Feb 2020 21:29:58 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dRzitdiHlA45TgRj4j0URDIt25Qbc9+WjwgG+H7zn4w=; b=qex5pZZpMtOmGb
	c+t09Ci9SxyJNjswbcE5GVJUECLklMnHZi+j1a9F4UP9H8Kz1JrGMiM9oufElsskhF7RrsHcguSgq
	XSqH0+O+oy+9wKTKA8v+nAe7uRaQqTN4QgTHnELI4AhubFrZyAlBSD0VstH4/cH9QyJmrtk0kR3A+
	V06dNFOOXIwHPt405h2MsjfHZCjnTbV+8rBs79EFCnC1xmUjEd694PKNLt9Ni48JQtQ1zNF3zKYMf
	jw8FCDlmKTk3tNrOSn6yiZHW1uOSZaUUq4yN+UJ+YxeJbDJw/pJ9sf5AdL/XnqmVGbFC8rC/rwYWP
	k+RgfyORk99MwMUrh2VQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j4sSE-0005Ai-17; Thu, 20 Feb 2020 20:29:50 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j4sS6-0005AJ-Dx
 for linux-arm-kernel@lists.infradead.org; Thu, 20 Feb 2020 20:29:43 +0000
Received: by mail-ot1-f65.google.com with SMTP id p8so4910600oth.10
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 20 Feb 2020 12:29:41 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=4y11Rw9Quj6ChkrwsaKBH1Q0T5iRPrjR3ZQy3ZsS7xA=;
 b=OnHqaN8KOOVdi6/03C+o4IkZ4OBokmUhC9WA8lIPSqCPAhhHvlPJMTPp86rlmiAPMV
 QI5ayRI4bwzdsA9mVP4HKuvA3l0kv8cJFqx2BDrJ9O4PEsLzSKoWmPL9p69qNLfIvhgP
 2ulztSgAWu+/oISy5OekcTnb3iQe+7fogkp15Vfpv24N+miYoJE34m4ERD006h+aDWde
 05lLDq4gON4RYeRNbVxDhCZZeJhYw+/QRWEHuHipCvHI2tC/0GENbSg4cdvfg+Qk28pB
 sFREYYvrSX2awUQqNZYhkOMmrHaWu4/UMf0RBe0HE3vywwnTpFecQZNj6AeFzojGj75D
 vMZw==
X-Gm-Message-State: APjAAAVpuEPvi7pGUlz6E7eiUV4OS3kylse3qs6Y8xYvExcTyfsp5DHe
 QtFZTW2n2di5J4l4BWVQHQ==
X-Google-Smtp-Source: APXvYqxqNmvtY+8v4lmPFwBx32CjiYTpN6LA3c1fXpwH+kIAQ9BKjTQ21m1UkbGpGxeL1RGLpLDftw==
X-Received: by 2002:a05:6830:1d7b:: with SMTP id
 l27mr23581373oti.251.1582230581148; 
 Thu, 20 Feb 2020 12:29:41 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l207sm128716oih.25.2020.02.20.12.29.39
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 20 Feb 2020 12:29:40 -0800 (PST)
Received: (nullmailer pid 7275 invoked by uid 1000);
 Thu, 20 Feb 2020 20:29:39 -0000
Date: Thu, 20 Feb 2020 14:29:39 -0600
From: Rob Herring <robh@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH v3] ASoC: dt-bindings: stm32: convert sai to json-schema
Message-ID: <20200220202939.GA6480@bogus>
References: <20200219161733.9317-1-olivier.moysan@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219161733.9317-1-olivier.moysan@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200220_122942_469937_A49B5633 
X-CRM114-Status: GOOD (  12.61  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, robh@kernel.org, alsa-devel@alsa-project.org,
 olivier.moysan@st.com, alexandre.torgue@st.com, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, tiwai@suse.com, lgirdwood@gmail.com,
 broonie@kernel.org, perex@perex.cz, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 17:17:33 +0100, Olivier Moysan wrote:
> Convert the STM32 SAI bindings to DT schema format using json-schema.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
> Changes in v2:
> - use pattern for compatible of child nodes
> - rework dmas and clocks properties
> - add "additionalProperties"
> 
> Changes in v3:
> - move clocks properties for st,stm32h7-sai compatible, to 'else' clause
> ---
>  .../bindings/sound/st,stm32-sai.txt           | 107 ----------
>  .../bindings/sound/st,stm32-sai.yaml          | 193 ++++++++++++++++++
>  2 files changed, 193 insertions(+), 107 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/st,stm32-sai.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/st,stm32-sai.yaml
> 

My bot found errors running 'make dt_binding_check' on your patch:

Documentation/devicetree/bindings/display/simple-framebuffer.example.dts:21.16-37.11: Warning (chosen_node_is_root): /example-0/chosen: chosen node must be at root node
/builds/robherring/linux-dt-review/Documentation/devicetree/bindings/sound/st,stm32-sai.example.dt.yaml: sai@4400a000: 'clock-names', 'clocks' do not match any of the regexes: '^audio-controller@[0-9a-f]+$', 'pinctrl-[0-9]+'

See https://patchwork.ozlabs.org/patch/1240792
Please check and re-submit.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
