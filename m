Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E79711360A
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 20:55:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wbYSr8BQFOifQ3bERPCpWP5rVAyOBNt9eIOO1k0HfIE=; b=rkmhGa0KP8qFlL
	681VBF2z0J6sMk2g4ispDP1TOL9FL/Qm9jyFPSD07JvZ+loVqybJB53W1MluwPiSs8TtxbqFCZL/p
	dBZHBJVd/ua/aRVkmsiGSIQmYFMIvuAbIqRETE8FtWu+JqsnhiCmT/slkBgl4Y6tpFKyfiRcv5dNj
	56LsKOJqyihyvXK/Bq9+RrbY1qp15DlGwk+rwkHg+4ljmh2eyT9VsiVVL87nVtJp7Xdc4sPxlRDJE
	R7LdbwbXhLoOCawgXpdPm5HNCDVu9bBPBB0MvYIXGXwQdDOSZzwGB5uY17Lf7L1y4oEeNB5R/wD9y
	Hay2YO1W1tH/HckgGKig==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icajy-00082v-9K; Wed, 04 Dec 2019 19:55:14 +0000
Received: from mail-oi1-f193.google.com ([209.85.167.193])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icajk-0007uG-BE
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 19:55:01 +0000
Received: by mail-oi1-f193.google.com with SMTP id c16so432439oic.3
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 11:54:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=OPmJQ+fyJlkP3BfGVuuBfX22U36bspS/c0JjyT/n6XY=;
 b=i9CyYuM38U0nYxiLki0UXwMM79b2yz+Xk4VIIJzOsIYUwBhba9d471o0Yf9RZXMA8+
 /vig/zg+Ls/nSa3aIMJD0OnKaYuwReE6E6ZR36M7qrZvZB3HZly26DRcRrYb7MkuevHP
 TJea2fnGR8YClVIzRZDAkfHE742jdESmJbJI7i3owIpE0EIfNJaz1zkZwrbY3UdajVDD
 XsRF0jPMkJXPR/UXcZfn2oo3m99JZ5aAIvTUEN4enCl4uhbXo1J1LrDfGVO4AC10+W3D
 MyVmtOG+GLpt8YGl/tX55k8TVW4tj7MsRJzPSEv6OYTBLCB+REfrDUkVhDiTr+LaeLpf
 xxwQ==
X-Gm-Message-State: APjAAAUBpyzlSZkLwwL1NryU1xZ77gYZIjtTJxhflMEGqt3jlUWymG0N
 1t3hdNObxhT3pCDWVVTOfA==
X-Google-Smtp-Source: APXvYqxd3fK9jhwjpyiSCh7faZowBYmsINV1Az1SfSXSPdjh2kqdLN95svGwJT4zf5QfC8ZsOqEirw==
X-Received: by 2002:aca:190b:: with SMTP id l11mr4217896oii.65.1575489298861; 
 Wed, 04 Dec 2019 11:54:58 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id 64sm2543076oth.31.2019.12.04.11.54.58
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 11:54:58 -0800 (PST)
Date: Wed, 4 Dec 2019 13:54:57 -0600
From: Rob Herring <robh@kernel.org>
To: Alexandre Torgue <alexandre.torgue@st.com>
Subject: Re: [PATCH] dt-bindings: arm: stm32: Convert stm32-syscon to
 json-schema
Message-ID: <20191204195457.GA18882@bogus>
References: <20191122103942.23572-1-alexandre.torgue@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122103942.23572-1-alexandre.torgue@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_115500_388287_B5263A44 
X-CRM114-Status: UNSURE (   8.34  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.167.193 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.167.193 listed in wl.mailspike.net]
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
 Alexandre Torgue <alexandre.torgue@st.com>, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 Nov 2019 11:39:42 +0100, Alexandre Torgue wrote:
> Convert the STM32 syscon binding to DT schema format using json-schema.
> 
> Signed-off-by: Alexandre Torgue <alexandre.torgue@st.com>
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
