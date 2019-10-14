Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 419FDD5AB0
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 14 Oct 2019 07:24:23 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=iC6hbpJbYo0lPOTbMUHH7eADVqnkSGz22NckI116mHg=; b=RaOo3YtHh46HPU
	vAxih1+vX0QYRjH09t+vDD81gBsOU69Rlii/UEm5OEUddKs/Z+K5ZPxhYGIWxASwupCjaCYyIUs+0
	V8o3O/dVpDSOjiVi0XqXcswWxWZuSwJWLLgY0z4YJI6akwXOc52nuVR37lEKc0qTm+lpGdEDzdzpe
	iE/TfitOU/gz0DXZVBSAVeL2aTppPN+abzZNAh3hYTsS3ho4aWZyK/eOsky93/+FqDPRRsi+R+vnh
	f7+JE/n+LZfp4q+4Uyizp7U/RazqIarvIC/JGU9RxoJIJ/d5aFzhXUR5fJgK8BX1Qwr1vXBa5WIO/
	jGJEAjA6+DPLYhlK9sMA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iJsqC-0001YN-Mi; Mon, 14 Oct 2019 05:24:20 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iJspy-0001X2-UT; Mon, 14 Oct 2019 05:24:08 +0000
Received: by mail-wr1-x441.google.com with SMTP id b9so18049604wrs.0;
 Sun, 13 Oct 2019 22:24:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=xve2QTvqqiIPdY2swYgSXv/9sUgWk5VFoJkt1OR92XM=;
 b=ebDLvX1bdKNXz7niKOTITJlttM2yqn+U5mSeSdx27Nw37ZJBHchbVsxjnm9S+9kdFS
 ZUPGWBIqR9kAzDAWdVzk1t8JqcBFqs1q0++geYj+3QVKD7PtyvGb+YiEXMx4GzEUR7AH
 xApeg3UjxYXIBBcsg4SBLCS7X7p+s0j7/CQ0vEFQB+YAEvTfLT+tExNJpWrVnUCzrpDj
 1zw7IjL4AuuM7xemnvCOXOIAWfTbvKQF4kApFHr1wdiYHROp2NXzb9HMtlBJMuaoc+M8
 Z4m2nm1Tu8246UrIeeP3hv7/bawLQ2ImT+Y7C0UJnCWONfVGDZ+Qi484My6zd3b43CeG
 yfiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=xve2QTvqqiIPdY2swYgSXv/9sUgWk5VFoJkt1OR92XM=;
 b=PdM1PNRUtBH9uakR0BgXlIuAXsgZwaSit4xeLVzesLlp+ABZejyJhd9eFeDi5vps9B
 b1lpOUV+S2K02PCPFD53uwB5kT3DSFEghPTn0vSKhK0oKgKJ7hlW2UNFNVBWkNTw0a0L
 rpA9z9vUudaFu8EZS032tq972awlI1OHGAS61xC50/qCjlb0B+FOvnnOKC1HTBH0Xx2+
 Tlt0oFMo0/ldIWC6QNGAP+4FNVNcfzNaBx8XMt++xffC0Ke/JaxIgwkw+XElHPDVJW9G
 XPBdwQyeBXUYq+SXfCkZN0WkVFQt4UukaiUlmq53CT2jah4ydzqDdKAZfhyQyU3TC9My
 8n0w==
X-Gm-Message-State: APjAAAUfKfG2yeYRqFSft7Rahe9daOSsikcga5B6O07Em1xOJZmEd9G3
 eBWPedv692hF2PZwnvxgj18=
X-Google-Smtp-Source: APXvYqzKonVFcIAEMzbOIakcFdq1lvZBSxABTbSM+x411K7O0LoCDjIwqijCbmQF+KV9mHQY1ymlRA==
X-Received: by 2002:adf:9ec7:: with SMTP id b7mr1185229wrf.221.1571030645335; 
 Sun, 13 Oct 2019 22:24:05 -0700 (PDT)
Received: from Red ([2a01:cb1d:147:7200:2e56:dcff:fed2:c6d6])
 by smtp.googlemail.com with ESMTPSA id n17sm16898743wrp.37.2019.10.13.22.24.04
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Sun, 13 Oct 2019 22:24:04 -0700 (PDT)
Date: Mon, 14 Oct 2019 07:24:02 +0200
From: Corentin Labbe <clabbe.montjoie@gmail.com>
To: davem@davemloft.net, herbert@gondor.apana.org.au, khilman@baylibre.com,
 mark.rutland@arm.com, robh+dt@kernel.org,
 martin.blumenstingl@googlemail.com
Subject: Re: [PATCH v2 0/4] crypto: add amlogic crypto offloader driver
Message-ID: <20191014052402.GA30688@Red>
References: <20191014051839.32274-1-clabbe.montjoie@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191014051839.32274-1-clabbe.montjoie@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191013_222407_007278_9F1C1791 
X-CRM114-Status: UNSURE (   8.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (clabbe.montjoie[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
 linux-crypto@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 linux-amlogic@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Oct 14, 2019 at 07:18:35AM +0200, Corentin Labbe wrote:
> Hello
> 
> This serie adds support for the crypto offloader present on amlogic GXL
> SoCs.
> 
> Tested on meson-gxl-s905x-khadas-vim and meson-gxl-s905x-libretech-cc
> 
> Regards
> 

Oups sorry please ignore this patchset, I forgot to send from my work address.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
