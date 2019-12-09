Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF04F11733B
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  9 Dec 2019 18:56:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=S4ck5oItUVkruagSfpbmLfxU9ozsG9Q0zCs9LQ2Km+8=; b=nl8ZpS7vGUFOQ6
	dt0UXdhKJuS4gU/JjNu5Fm8qwasj430BU49zofK7OlZccaQduBbgpFvI+nEZ8BQcKM0hxh5rP878i
	QGqHBM/s6ITViwEAwGQgBNO8cDA6qxw4A/hzmQJJ6BgtlLb16oNrNrqU7SlG0xGi34TX5KRWhNndB
	pZom21zoCRmdUhBsV1kZM84McS4KfMrYvaZy1JcEYKvFA42Kz/kgjuDZQY4UH6WgJl7g5CKcaRQky
	IFyfKELdNe8IOmEYQUMxD7xE5Ixq8KBcHMdqoCyKvjSzey+KEZnORoGBEESQM7/1+mdunPLm97spW
	jG4b4QdI2mtYAF05Askw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ieNGm-0005Vz-Bx; Mon, 09 Dec 2019 17:56:28 +0000
Received: from mail-ed1-f68.google.com ([209.85.208.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ieNGe-0005V8-Eg
 for linux-arm-kernel@lists.infradead.org; Mon, 09 Dec 2019 17:56:21 +0000
Received: by mail-ed1-f68.google.com with SMTP id e10so13448495edv.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 09 Dec 2019 09:56:18 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Gi+hOHgs4FbeACcCTQiZTWxm/wZf1RY5AFjxL2lbXlA=;
 b=tN4Hu1BBtCNYrPkl44c/tG9fBOCbEQOmrPsisW2DHdRXX0j6BbI6SCGZsYFSg/rl0s
 eBSBwkI8ii13NfHrIY8brbcrUV6VS5ZNS2gOscbpMekAOiagPVK/4VZ1ZTs0E4xaix3n
 q21Kijpr/uIIzSaJPjktH5oiRv4GUxWVF24BVRqzNQwOiqaXZd9ik8Dl6zyooikug85M
 +vnT7QdMZ21Pmfk2rzhKPSA9ClfA/3mE0h8Bpgmny/2CYVhYHbD2sGqgyNTVS2FYomR2
 6oO3GGKuZ1I71CQo1Vi5EBRvjhyH0trkWALbHxZbtW1sBChRp8K6kTPteP/pwrUYYbq6
 1uKA==
X-Gm-Message-State: APjAAAVLE+7/vurN5NECCPz19gGsJUflmdXvdxl2c5GCng7eixkeeUY/
 ZKnCKdnjYEfo4jWL5EFrG8k=
X-Google-Smtp-Source: APXvYqxibjuMKqfHUp5/cyShtSVtcPbXPbo0Lhkzsi+XqDkOd1hJozuvx/jD2HgO6rz0P1LDl87cRQ==
X-Received: by 2002:a17:906:ccd0:: with SMTP id
 ot16mr2638134ejb.121.1575914177112; 
 Mon, 09 Dec 2019 09:56:17 -0800 (PST)
Received: from kozik-lap ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id g26sm14541ejc.33.2019.12.09.09.56.15
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 09 Dec 2019 09:56:16 -0800 (PST)
Date: Mon, 9 Dec 2019 18:56:11 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-serial@vger.kernel.org
Subject: Re: [PATCH] MAINTAINERS: Include Samsung SoC serial driver in
 Samsung entry
Message-ID: <20191209175611.GB26324@kozik-lap>
References: <20191205200422.5781-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191205200422.5781-1-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191209_095620_489830_50DB9A42 
X-CRM114-Status: GOOD (  13.26  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.68 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.68 listed in wl.mailspike.net]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
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
Cc: Jiri Slaby <jslaby@suse.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, Dec 05, 2019 at 09:04:22PM +0100, Krzysztof Kozlowski wrote:
> Samsung SoC (S3C, S5P and Exynos) serial driver does not have dedicated
> reviewing person so some patches might be missed be Samsung-related
> folks (e.g. not even reaching Samsung SoC mailing list).  Include them
> in generic Samsung SoC maintainer entry to provide some level of
> reviewing and care.  This will not change handling of patches (via
> serial tree).
> 
> Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Cc: Jiri Slaby <jslaby@suse.com>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> 
> ---
> 
> I am not the author of the code and I do not feel confident in its
> internals so if anyone else would also like to join in taking care
> serial driver, feel free to let me know.
> ---
>  MAINTAINERS | 1 +

Applied to samsung-soc.

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
