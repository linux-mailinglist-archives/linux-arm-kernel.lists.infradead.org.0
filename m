Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7F69F11354C
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 20:01:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=em9L9g91XRQTjEO0PY1YHUm0uvUu7JQudOVfg8wdizs=; b=hXZseKKkRbPaJy
	Y16E5pe27p275oq2BnZGrjVpGMEqVIffOju+hDqg+ixeSW5e/t5b4btQTXDEE1A497goKu/A39JLq
	5pG9cp46bU/Bv+8V86ay2SUaCMYBvut9SZzbcs7ewROn5C93crQV39FwRad6PBRvS9XMyXvu7Bw0J
	hnLmwq6jmAJOBIY1TOwGbMRTd7KjMMPqigWklvtHXVriBopE8KQ0r1QyeDQ48yBnpRp8QtHsbvArU
	QH9CGSnbkKhz0ytBR/s11qlJqmFyMU8Hw6hsaVjjX5NoNas8mjFwGA2/ycOQY+03Ca0WXOJNtJQWr
	CRo4LNJmibSByJRbWzUw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icZtR-00048P-AX; Wed, 04 Dec 2019 19:00:57 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icZtL-000481-1X
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 19:00:52 +0000
Received: by mail-ot1-f65.google.com with SMTP id a15so265904otf.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 11:00:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=NH9P71jaSYwbdiuvHT3KsqpBTP1sBzRBr3S4xZfrqbs=;
 b=osfhoIiBrrXucxxwQq4SQczNKWCQUxV2bbNJW6sZFp16utZqvCfTP463wCE5fmFC1p
 g9g1YImM89YJw6jJrCt6YGB9O+ZjrSBSyO5jYZal7rEgaAUj+fStlO8Uzk234hBXGda6
 WJL/ZQQ5dWSNJcwOaGE/rFEA3hi0mKQDacW08flTfC93AmhFi0bNQ5VYPjA2Y9OmIDMl
 5xrt1aZJOPAMN9wK6XOtNaIo+lBY3+0kxxhTxSzsYeJGMUATsPZ0446glBiywkeOeewM
 pLvcJXYtpUMpBnwxIj6u+RsBBL+VAorLVQilmFtzvjtST8eODS+Cna+a7bgCTFvH/rVs
 E+VQ==
X-Gm-Message-State: APjAAAX6DpzJCslR9a3+vGstYSzveCRa6TIJqmz9nJ1GFgsOHiyTZ2EX
 IM8+FjreI6k2c+9caWZoTQ==
X-Google-Smtp-Source: APXvYqzblcedlB6VcbjUSVI+aOesYy+s6U2KKJdMQ/zRFaTgEEQAiavskZ46/ytzN8GzzTKG4671vQ==
X-Received: by 2002:a05:6830:154c:: with SMTP id
 l12mr3676333otp.275.1575486049903; 
 Wed, 04 Dec 2019 11:00:49 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id l81sm1705081oih.5.2019.12.04.11.00.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 11:00:49 -0800 (PST)
Date: Wed, 4 Dec 2019 13:00:48 -0600
From: Rob Herring <robh@kernel.org>
To: Stephan Gerhold <stephan@gerhold.net>
Subject: Re: [PATCH v2 1/4] dt-bindings: vendor-prefixes: Add yet another for
 ST-Ericsson
Message-ID: <20191204190048.GA28062@bogus>
References: <20191120181857.97174-1-stephan@gerhold.net>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191120181857.97174-1-stephan@gerhold.net>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_110051_085963_B9B1B76E 
X-CRM114-Status: GOOD (  14.84  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephan Gerhold <stephan@gerhold.net>,
 Linus Walleij <linus.walleij@linaro.org>, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 20 Nov 2019 19:18:54 +0100, Stephan Gerhold wrote:
> Unfortunately the vendor prefix for ST-Ericsson is used very
> inconsistently. "ste," and "stericsson," are already documented,
> but some things in the kernel use "st-ericsson," which is not
> documented yet.
> 
> st-ericsson,u8500 is documented in bindings/arm/ux500/boards.txt,
> and is used to match the machine code and the generic DT cpufreq
> driver.
> 
> Add it to the list of vendor prefixes.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
> Changes in v2: none, added new patch to deprecate other vendor prefixes
> v1: https://lore.kernel.org/linux-devicetree/20191120121720.72845-1-stephan@gerhold.net/
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
