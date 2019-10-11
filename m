Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82F98D47B8
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 11 Oct 2019 20:36:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=uVubfEKUlqCa5Cv7/k5JBXCuCRwXh2OzpiqUSCUovRA=; b=NRiIShmrWAZv31
	JumOtMTeVK2liF+nV54aNz+KhGOFFkPqf3RfuIFn40VMx7xW7dDjTlZDIlteZXHntrcUIIHszGaW7
	sa/jA9yr9oBCGaOs6jd/ERPcRxw6gMr0lMTP/uOEll4HzwBZYaeWV6bkwAq4PUfZ+ptqBWVwxG+BR
	a26QZdX2FMpif714F1FrpfJQlZ1OAwSBla8QTXklptHANgcymHFzCgsO5HLEAnJau6yp4sYlBURkc
	w09i5pb2lD+uZnJuheVxdFDOxKVtepfEzh4F6leobep0DcJtHg6nwgKF2qDbk0joPVQLQlGOBU9D6
	2sFywghm3c//uuDA3ZNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iIzm8-0006kq-3a; Fri, 11 Oct 2019 18:36:28 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iIzlr-0006jY-JC
 for linux-arm-kernel@lists.infradead.org; Fri, 11 Oct 2019 18:36:12 +0000
Received: from mail-qk1-f171.google.com (mail-qk1-f171.google.com
 [209.85.222.171])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 201CC218AC
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 18:36:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1570818971;
 bh=F0i5LImbPdwjKpMcjmA3DQC81Y38eji4C5T7CPPrp9o=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=mCZbRKIe425xYovveqmcmKyiTIqN18mCSZTPJZETib/w2adHOPdoPbKs5P29wVewb
 LeJ3JbCNgIhirIlP4hEOBpsaW7PX2+oypz0kNsqV4OpqVQd6sagxBlRcBQWmjrlyl/
 uuOqYFNbUnXMxfrxp6mFtNSGU0Mxj7hystNB2hTE=
Received: by mail-qk1-f171.google.com with SMTP id f16so9778083qkl.9
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 11 Oct 2019 11:36:11 -0700 (PDT)
X-Gm-Message-State: APjAAAVa0p5Hnjjf26ekRvQ02DvU1XCof9R9G//ccuZlR7dxgNAYdhou
 mjrIgLnUjr6KETEl0X/LOLrhKvB1wxxzrUCDnQ==
X-Google-Smtp-Source: APXvYqxMfo6sVYSlq8G32z26ni82A0D4JhoieTjEs0ZK/Y/KBIZd4wZ4PlAcMe6QhlpPLn6YsXah1p9yBvfHROhUg0k=
X-Received: by 2002:a37:98c1:: with SMTP id
 a184mr15988314qke.119.1570818970225; 
 Fri, 11 Oct 2019 11:36:10 -0700 (PDT)
MIME-Version: 1.0
References: <20191002152125.16227-1-benjamin.gaignard@st.com>
In-Reply-To: <20191002152125.16227-1-benjamin.gaignard@st.com>
From: Rob Herring <robh+dt@kernel.org>
Date: Fri, 11 Oct 2019 13:35:59 -0500
X-Gmail-Original-Message-ID: <CAL_JsqKWrJjaoHWBrEJuA0qQ2tOzNuzGO6OCtH_Ccmfw89K8QQ@mail.gmail.com>
Message-ID: <CAL_JsqKWrJjaoHWBrEJuA0qQ2tOzNuzGO6OCtH_Ccmfw89K8QQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: thermal: Convert stm32 thermal bindings to
 json-schema
To: Benjamin Gaignard <benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191011_113611_670706_3B07EC08 
X-CRM114-Status: GOOD (  11.02  )
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
 Alexandre Torgue <alexandre.torgue@st.com>,
 "open list:THERMAL" <linux-pm@vger.kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Eduardo Valentin <edubezval@gmail.com>, Zhang Rui <rui.zhang@intel.com>,
 linux-stm32@st-md-mailman.stormreply.com,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Wed, Oct 2, 2019 at 10:21 AM Benjamin Gaignard
<benjamin.gaignard@st.com> wrote:
>
> Convert the STM32 thermal binding to DT schema format using json-schema
>
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
>  .../bindings/thermal/st,stm32-thermal.yaml         | 74 ++++++++++++++++++++++
>  .../devicetree/bindings/thermal/stm32-thermal.txt  | 61 ------------------
>  2 files changed, 74 insertions(+), 61 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/thermal/st,stm32-thermal.yaml
>  delete mode 100644 Documentation/devicetree/bindings/thermal/stm32-thermal.txt

Same comments on other conversions apply here.

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
