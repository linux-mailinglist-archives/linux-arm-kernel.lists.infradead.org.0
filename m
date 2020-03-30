Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CE70219882D
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 31 Mar 2020 01:23:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5ijl4UICVC9xg67V6qoQu2ep2Hg9AeD0kn1kyxSAIro=; b=FvcvLQswL9GzN0
	PlSgaMV7maVOJBoEbbvIFC+WtpkoC+HdojHXl0aD809nGbSolHECDqHETPxcuGubonzcsIlcrk5XB
	9fkWz4ohd84xc1Wt+6ejRdsl9g1X6jk30BymckbtBwJUgqyRgCISEaKjTZC5IrCCzxv8N4Yh53D7W
	m9FrykJpx7bpUpLPiGUwkIEixDuedWuOeXU+yK5GscOPlr2uQUKaYu874jxZ8TAbnGi4oigHUzpsO
	DLplALXal42+gGK/QYX0xZxIoKQFMuBjImoQw3MjykS1U25xXvoSMTQIt3f1pGJi73psVXocz4e7N
	QL1WYJGQQ9ZpU0rvYeqQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJ3kr-0004D9-JV; Mon, 30 Mar 2020 23:23:41 +0000
Received: from mail-il1-f196.google.com ([209.85.166.196])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJ3kW-0004A0-Ds
 for linux-arm-kernel@lists.infradead.org; Mon, 30 Mar 2020 23:23:21 +0000
Received: by mail-il1-f196.google.com with SMTP id p13so17606504ilp.3
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 30 Mar 2020 16:23:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ei/2DNWWLO/ewjsFgKybLpdPWmjKaCArsxYWdz6Gmdw=;
 b=SHkiKgd9hBBlxT5ABSM9rxgpqKFKMorxPBmMM4FFtTwoUG3m0Mk630ToXf3ncPVaMm
 5abx/tGHiRndurm9f5ygeDpSNLvNW7U2o8TZN33uV/CNI5er9BgSwh6NJwIFJr/N7eoY
 TQ3VeE0y942Yn5XZT2bt0HxTQwEZaTNhGrbbyYxJ7fLuo2DfKFKAp6NshrFv6Hoip9eq
 D5efGwVsm6YwAi3782HH+DV1TGTn3Gthp6gP6TazeduiJPjHs1tOfodozauFr52tBgfL
 lYGtLWF4nAY/i7bW1e/fv8iZY3ep8N/it8BWAb/BWzcg8xSDWRZ50pvPgE2+Eb1aol9j
 fLUQ==
X-Gm-Message-State: ANhLgQ129kiOHfFSRxlSboH3fWM4SXr9ht9qYP5/PohiutEp6HqmGq4S
 jtn9JOSFx9ETKQSqgind0w==
X-Google-Smtp-Source: ADFU+vt6YPW4L+F4/DPUzECJtXAms0HJIkjHPEOx/V9rg1GOkwS/AJdYdgTPIk0+bM3fyuPOyUAUSQ==
X-Received: by 2002:a92:dcc8:: with SMTP id b8mr13358089ilr.244.1585610599472; 
 Mon, 30 Mar 2020 16:23:19 -0700 (PDT)
Received: from rob-hp-laptop ([64.188.179.250])
 by smtp.gmail.com with ESMTPSA id j23sm4431304ioa.10.2020.03.30.16.23.18
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 30 Mar 2020 16:23:18 -0700 (PDT)
Received: (nullmailer pid 20814 invoked by uid 1000);
 Mon, 30 Mar 2020 23:23:17 -0000
Date: Mon, 30 Mar 2020 17:23:17 -0600
From: Rob Herring <robh@kernel.org>
To: Matheus Castello <matheus@castello.eng.br>
Subject: Re: [PATCH v3 2/3] dt-bindings: arm: actions: Document Caninos
 Loucos Labrador
Message-ID: <20200330232317.GA20759@bogus>
References: <20200229104358.GB19610@mani>
 <20200320035104.26139-1-matheus@castello.eng.br>
 <20200320035104.26139-3-matheus@castello.eng.br>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200320035104.26139-3-matheus@castello.eng.br>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200330_162320_478143_A7B184EB 
X-CRM114-Status: UNSURE (   9.45  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.166.196 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.166.196 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org,
 Matheus Castello <matheus@castello.eng.br>, linux-kernel@vger.kernel.org,
 afaerber@suse.de, robh+dt@kernel.org, manivannan.sadhasivam@linaro.org,
 igor.lima@lsitec.org.br, edgar.righi@lsitec.org.br,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 20 Mar 2020 00:51:03 -0300, Matheus Castello wrote:
> Update the documentation to add the Caninos Loucos Labrador. Labrador
> project consists of a computer on module based on the Actions Semi S500
> processor and the Labrador base board.
> 
> Signed-off-by: Matheus Castello <matheus@castello.eng.br>
> ---
>  Documentation/devicetree/bindings/arm/actions.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
