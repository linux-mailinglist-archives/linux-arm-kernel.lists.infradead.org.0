Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F0181271F7
	for <lists+linux-arm-kernel@lfdr.de>; Fri, 20 Dec 2019 01:01:17 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=PCihIxEHfHfsVKXz5N5OJsiK2bLzCL7yCKaghAuBO7M=; b=UftmzVawcKfl50
	GIBK55eJyyIqLz+P5zUAUeJHrhhdXsjE5gUSr30tWFrLuF4aotMvN3gD8DMV78XDz7f9LQO8CwB6R
	gfEvIvXIKdntM5/au14Bu79jklsURVXtazdy+a4aqqhItgwIMK93622R6rLVU69CexCQ80vDdA9CD
	A8vG3OLoKkfYhSMbX83VUhKvBHGJyR9Gg4sedJv5LIkj8D2RkfdvbcfAzXI9Od8x5ev9FEwdRnS1Y
	ybJuilY8VMw/cEOpGXw8+vOaHVdz24hu1BK7JxcM+NXHxMwKUU/eqRIO9jnSGeHrRBOeznKnpP7xs
	qAslRWxWApXCXJtnxlPA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ii5jG-0001nf-Kj; Fri, 20 Dec 2019 00:01:14 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ii5j5-0001n1-8H
 for linux-arm-kernel@lists.infradead.org; Fri, 20 Dec 2019 00:01:04 +0000
Received: by mail-ot1-f68.google.com with SMTP id c22so9380099otj.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 19 Dec 2019 16:01:03 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=ixxxBsIzEckZyMKz6FP9blKKJXoRngv5HsAGvReLZD4=;
 b=b3sNR3JM2PnCxL6bgl3odlJ9zbdWwdsRSWrgoWF5ci+TfBA01iCPAZbifp4fP/Ox3L
 vlWdG/5zoMPKapsvPUhXGFu5KuHuSqFDGLYAGKySLvJVEhT7wz7jVTH2HvsPqh4oGJSb
 wRZp4R5lveLUBxG48CZU7W8yCO6TQoOlVhH8s+Z04Uv1Uah2Q9Ix7FkhMlJ5bMQJ4wGA
 vtHl87lm8Ix0yudqfcvcddIfawMzsT5dc4qoF55tHbo533ZkI0trjxjIHdlsr0pdupqc
 9OIfYWJChsQduQmwzySCua8ASkLkwZk4jrWxNn/35Qy0sUeqxzdSeXhbH2p+KnCr/7vf
 EqcA==
X-Gm-Message-State: APjAAAUnit0mmjJDAgcwbrLcmtz0oXsH2gCRO+u/Lz/UmHVi4z69evE1
 Lasd1XJsNBXdcVx05MFnbQ==
X-Google-Smtp-Source: APXvYqzEJwtRPN0UXZ/xR2ptdwnUmxXBKOPtOTRVoyqaKCSz+7WnsyzpWFMgdicP0Vvzr157+uUKXg==
X-Received: by 2002:a9d:6a5a:: with SMTP id h26mr11893681otn.103.1576800062626; 
 Thu, 19 Dec 2019 16:01:02 -0800 (PST)
Received: from localhost (ip-184-205-174-147.ftwttx.spcsdns.net.
 [184.205.174.147])
 by smtp.gmail.com with ESMTPSA id l128sm2541590oif.55.2019.12.19.16.01.01
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 19 Dec 2019 16:01:02 -0800 (PST)
Date: Thu, 19 Dec 2019 18:01:01 -0600
From: Rob Herring <robh@kernel.org>
To: Andrew Jeffery <andrew@aj.id.au>
Subject: Re: [PATCH v2 1/3] dt-bindings: ipmi: aspeed: Introduce a v2 binding
 for KCS
Message-ID: <20191220000101.GA16104@bogus>
References: <cover.fe20dfec1a7c91771c6bb574814ffb4bb49e2136.1576462051.git-series.andrew@aj.id.au>
 <8aec8994bbe1186d257b0a712e13cf914c5ebe35.1576462051.git-series.andrew@aj.id.au>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <8aec8994bbe1186d257b0a712e13cf914c5ebe35.1576462051.git-series.andrew@aj.id.au>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191219_160103_294818_6D4FF347 
X-CRM114-Status: GOOD (  17.02  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, minyard@acm.org,
 arnd@arndb.de, gregkh@linuxfoundation.org, linux-kernel@vger.kernel.org,
 linux-aspeed@lists.ozlabs.org, robh+dt@kernel.org, joel@jms.id.au,
 openipmi-developer@lists.sourceforge.net, haiyue.wang@linux.intel.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, 16 Dec 2019 12:57:40 +1030, Andrew Jeffery wrote:
> The v2 binding utilises reg and renames some of the v1 properties.
> 
> Signed-off-by: Andrew Jeffery <andrew@aj.id.au>
> ---
> v2: Rename slave-reg to aspeed,lpc-io-reg
> 
> Rob: After our discussion about the name of 'slave-reg' on v1 I've thought
> about it some more and have landed on aspeed,lpc-io-reg. In v1 I argued that
> the name should be generic and you suggested that if so it should go in a
> generic binding document - I've thought about this some more and concluded that
> it was hard to pin down exactly where it should be documented if it were
> generic (the generic ASPEED LPC binding is one place, but that would suggest
> that the property is still ASPEED-specific; maybe some discussion with
> Nuvoton might give some insight).
> 
> Regardless, it turns out that the address specification is really
> ASPEED-specific in this case: The KCS host interface in the LPC IO space
> consists of a data and status register, but the slave controller infers the
> address of the second from the address of the first and thus only the address
> of the first can be programmed on the BMC-side. ASPEED supply documentation
> that maps the LPC-side register layout for given LPC IO base addresses. I think
> this is esoteric enough to warrant the aspeed prefix.
> 
>  Documentation/devicetree/bindings/ipmi/aspeed-kcs-bmc.txt | 20 +++++---
>  1 file changed, 14 insertions(+), 6 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
