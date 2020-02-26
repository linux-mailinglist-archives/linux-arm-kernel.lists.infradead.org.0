Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 486DF17025E
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 26 Feb 2020 16:28:45 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K6FFCbwqkdiyWENQ/SRI30u3aZ/f0pCKH0up6yf1YT0=; b=J72x4TOsIhipgH
	RCrten05FOc9PdmDdDlMv7NBxrz9qJo5wHEEx9YonWbEJ0vR/iOIZg+xg1MJVCqkxcgIcYOGUyZFB
	xE6cC9lflZOmqYSElN2QTagjH2bDL4R65BhLWG2P1d0u3NZEY4dOSvZZbjZTI0JI0j7XJfyljlisy
	KZnm8rgzz4Rr1F/wol3lGPYY3s4C4GbmsTnYVWADILao6rOThaCCEcp3aawPhqXnTvwhBinad+7Ou
	obYso2lYXHeXxY8Ijaihl8u0B+7YKJkZBiKWp7snXvSFVQ6vt+zgTfsnhFsrJboAUCbtRcF9LAtcc
	ynVjYA0chCExVA3iAbjA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1j6ybs-0003TV-TS; Wed, 26 Feb 2020 15:28:28 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1j6ybg-0003T4-LM
 for linux-arm-kernel@lists.infradead.org; Wed, 26 Feb 2020 15:28:17 +0000
Received: by mail-ot1-f65.google.com with SMTP id h9so3256673otj.11
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 26 Feb 2020 07:28:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=a9rZZe0L1NxPawlPYOzTIFGXo7NCP4X/kbRAjcuDymA=;
 b=TBP0OH8TLWy8+HBJrn+2Ci6mQVjKfg4LGMHsiJFoQx80cya9NDf6QKoeb6vkfZFEpK
 UtZVL/8J+yUZJ6UUf5+u2LcAuBhxNC0w8TzmqRp/cowGLaubQPwmN8jR6+a89Muf0f5T
 1+rJ9TYDSty9FCT/KDGm4KDeZdZTQPAu4ArpwufS863ZqWZbB47QbkwyiZKSrG3XvHMY
 CvecgDQYaPz4CCJFYDI12ibZafJ2NGh77rVv+3/F227MwOBAu0Ht0Rfmut4ROUqwNDfR
 nOvFhjdtUk8ND6ihZ0A47YFZZL+W/aQAB2FON77c7bFuR77OsqZmFpJGw3D1WH98bNg3
 ss0Q==
X-Gm-Message-State: APjAAAXUmdCymjdrDMnNuVz3kcoQWNl+lMfjSuyv+a846UFpeJtMdc0W
 vB36KGpfctEdmXhoNhBtwg==
X-Google-Smtp-Source: APXvYqwZ3XlmubdKEg9c/y0IXymM4dIMk5vVK9Zt1kLDjlGgX7KXKA9TIZ8VZho3mGt96KPTVpHDLg==
X-Received: by 2002:a05:6830:1317:: with SMTP id
 p23mr3519055otq.3.1582730895795; 
 Wed, 26 Feb 2020 07:28:15 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i7sm907560oib.42.2020.02.26.07.28.14
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 26 Feb 2020 07:28:15 -0800 (PST)
Received: (nullmailer pid 3059 invoked by uid 1000);
 Wed, 26 Feb 2020 15:28:14 -0000
Date: Wed, 26 Feb 2020 09:28:14 -0600
From: Rob Herring <robh@kernel.org>
To: Lubomir Rintel <lkundrak@v3.sk>
Subject: Re: [PATCH 03/10] dt-bindings: clock: Convert marvell,mmp2-clock to
 json-schema
Message-ID: <20200226152814.GA2965@bogus>
References: <20200219073353.184336-1-lkundrak@v3.sk>
 <20200219073353.184336-4-lkundrak@v3.sk>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200219073353.184336-4-lkundrak@v3.sk>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200226_072816_698763_0A0EEA6B 
X-CRM114-Status: GOOD (  11.30  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, Michael Turquette <mturquette@baylibre.com>,
 linux-kernel@vger.kernel.org, Lubomir Rintel <lkundrak@v3.sk>,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, 19 Feb 2020 08:33:46 +0100, Lubomir Rintel wrote:
> 
> Convert the fixed-factor-clock binding to DT schema format using
> json-schema.
> 
> While at that, fix a couple of small errors: make the file base name
> match the compatible string, add an example and document the reg-names
> property.
> 
> Signed-off-by: Lubomir Rintel <lkundrak@v3.sk>
> ---
>  .../bindings/clock/marvell,mmp2-clock.yaml    | 62 +++++++++++++++++++
>  .../bindings/clock/marvell,mmp2.txt           | 21 -------
>  2 files changed, 62 insertions(+), 21 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/clock/marvell,mmp2-clock.yaml
>  delete mode 100644 Documentation/devicetree/bindings/clock/marvell,mmp2.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
