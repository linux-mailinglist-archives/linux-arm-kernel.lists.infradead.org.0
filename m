Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A7DDEFD03D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 Nov 2019 22:21:24 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=egkT56OQgya/6kpmwe3Kk8gkNkjyjDyKZ4edluTwQKc=; b=YLZMT1bWMDydEo
	z2I7Wh41e/KFpoKeOgLRtxGYPIs+2r4KLEU60d121JDv3F0Fuxz+c6aMz4sooSf6fzLsABMTgH9MT
	caRdhVh6btZKVjVIwpdEq/r4uimpgAD0TX8FFgAHJnuqBgZlXk+R/8RMbSeewxGNEtPzoyL/+TwK5
	EhdtPTTzWFlmoMDofm5GtsE8AYetfB6f8xfjUxf5tD5PAN8pMbFEA9Nl1hMEv5SRdvVS06a12Ix7h
	n5bYPaWu8vP6CG4cw/bxTx9hdd21k/cV2re3DO/Ju0OyCpBbiz8Niuu65NcGidhZ8qCjPLNn6M6l3
	82IlwYeF1XS040f3EqVA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iVMYN-0008KI-54; Thu, 14 Nov 2019 21:21:23 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iVMYB-0008Jo-5R
 for linux-arm-kernel@lists.infradead.org; Thu, 14 Nov 2019 21:21:12 +0000
Received: by mail-ot1-f65.google.com with SMTP id c19so6160454otr.11
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 Nov 2019 13:21:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=83J06N/2U0I2hY3ijlKmgx6CDRML5iKyBqhq8dV5a1U=;
 b=C6s/pQR/5Ikca01w8l9sXUdrW+8nFbimJBCgqJV8uRX48qnTVNjzFqhOUodAZzvptw
 FTFDNwpnhxYl1xdMHOq8tBB4O0zuTUQfCrwekKu6H2RlamFlnNzJ5BEzviRtT4lyGqXe
 NN/mwy3o6QF8G1O3Bze7klpK8p10MN6N3dK0vRTynr05ZL8THjrzpFkTqjXQxESrFYMi
 JowQRLWomLA47G/n4fbTtU8oPUGVCN3c6jk5a7k9FNVllQEgyHPME4YgOvCALyGlSDQi
 5ScnRcRYUSXvg0J9l9g6TQ8pRemH+QRkxkQ2kOU9V+TlpxKWGc3vRUm12L+Pk6P0ROuL
 sGFw==
X-Gm-Message-State: APjAAAUWtdJKBnCEArP7TJ3eJTfpOBN8Xqe9Xt5f9NWakQ9euXC5UiwK
 S1lMwqqRe2Xzb99rxItOGw==
X-Google-Smtp-Source: APXvYqzPym4HOlsuJAT5utwxXtyrB4NEcV/LoiuR8d9etp6/t1NhmHXvRZMUFWT/cOgpfIbtY77QSQ==
X-Received: by 2002:a9d:6288:: with SMTP id x8mr9400782otk.170.1573766469417; 
 Thu, 14 Nov 2019 13:21:09 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id g23sm2199911otl.1.2019.11.14.13.21.08
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 14 Nov 2019 13:21:08 -0800 (PST)
Date: Thu, 14 Nov 2019 15:21:08 -0600
From: Rob Herring <robh@kernel.org>
To: Maxime Ripard <maxime@cerno.tech>
Subject: Re: [PATCH v2] dt-bindings: Add syscon YAML description
Message-ID: <20191114212108.GA18356@bogus>
References: <20191111133500.135306-1-maxime@cerno.tech>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191111133500.135306-1-maxime@cerno.tech>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191114_132111_205218_DA01FD74 
X-CRM114-Status: GOOD (  13.66  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
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
 Frank Rowand <frowand.list@gmail.com>, Maxime Ripard <mripard@kernel.org>,
 Chen-Yu Tsai <wens@csie.org>, Maxime Ripard <maxime@cerno.tech>,
 lee.jones@linaro.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 11 Nov 2019 14:35:00 +0100, Maxime Ripard wrote:
> The syscon binding is a pretty loose one, with everyone having a bunch of
> vendor specific compatibles.
> 
> In order to start the effort to describe them using YAML, let's create a
> binding that tolerates additional, not listed, compatibles.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> 
> Changes from v1:
>   - Move syscon binding from misc to mfd
>   - Add a select statement
> ---
>  .../devicetree/bindings/mfd/syscon.txt        | 32 -------
>  .../devicetree/bindings/mfd/syscon.yaml       | 84 +++++++++++++++++++
>  .../bindings/misc/allwinner,syscon.txt        | 20 -----
>  3 files changed, 84 insertions(+), 52 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/syscon.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/syscon.yaml
>  delete mode 100644 Documentation/devicetree/bindings/misc/allwinner,syscon.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
