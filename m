Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7477011BBB4
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 11 Dec 2019 19:28:06 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Cc:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=QnhDlPb3oYepk5cAqrMw9jydA+/N0J+qi/XBPbC+rlI=; b=qMG2CVJU18VdBv
	Abklq5dzMSDTGofzq2j9dMvr6L6xVqaYe/aFiJPGGdmK9ZgNvy82WjqSVL3V4RNm5FZzQJi3xCOP5
	SFqgSLO06I9WeimhLX+MF+xlzcYih/ijDXZkGkfoMdDG5ygMffGNwiMU3Y2z1yav3/h2ZuU/aoPj+
	cMQ0pmeYZawJPDRIyxinhu2mKgp1WXl6n++uR266r/Tt20ZpmiK57NKGgItxYDiXs/9bg95yqHMLi
	K3iw1y36LpXcBrL8zU6JiFUBSpUlHi7gULmO4vVsS83smx9TFLJ/FmsAOd4CQGyN23X/cv3w8xwAx
	Yn+gmpj3zwmmj/YR6BUg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1if6iN-00059Y-6K; Wed, 11 Dec 2019 18:27:59 +0000
Received: from mail-ed1-f66.google.com ([209.85.208.66])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1if6i8-00057q-UO
 for linux-arm-kernel@lists.infradead.org; Wed, 11 Dec 2019 18:27:46 +0000
Received: by mail-ed1-f66.google.com with SMTP id cx19so20288806edb.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Dec 2019 10:27:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=Ff7CQdMliIKDFZWCzAdUrG86rvuqf7GP0H4SQLsLeJ8=;
 b=OcocTrHQ6fhjPmLxkMNakfv5Q1lLy2lbLQ1ojigUF0taLWr8cPm2T1azy+PTnHy39U
 UpQdURYKE5Br4vrug8Y+85rbgyWDAQa/o0gBX+Hsay5NI2d2DfzpVB2wRBw1t4OzyRD9
 +kM8vA3N1yJzNPXzNMwaq38MQkQAD/sY60djiHIcPFYXBp3upfdfrMEBozh7LYOomDZU
 A78fmsayirBgp4idGhtEZcwEvhcI7rQ7KOTbjl4HJv8TspHdOA/H0N+PK5iK/2ibl7fy
 iDa41RgsATZH+1GFsyiqPzTGaisuGEtuTxywbpFa5TwuAOaPUB7s3I5zdbVtKmpADnSz
 fSuQ==
X-Gm-Message-State: APjAAAWUxNJB0P64xXIVPxnECzf2LXDEa9AXdpBoqe58T3AL3WdlWXsJ
 x01bxETmQJKVtkt2ztXNeVA=
X-Google-Smtp-Source: APXvYqyJ7PblsCZH6vXzuWl2i8OZSvSR9RTMyV0zfdp9izG/UcT0/mLxk6V7A62vz392qKGcAPOvrg==
X-Received: by 2002:a17:906:a950:: with SMTP id
 hh16mr4812284ejb.75.1576088862984; 
 Wed, 11 Dec 2019 10:27:42 -0800 (PST)
Received: from kozik-lap ([194.230.155.234])
 by smtp.googlemail.com with ESMTPSA id x15sm64891edl.48.2019.12.11.10.27.41
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Wed, 11 Dec 2019 10:27:42 -0800 (PST)
Date: Wed, 11 Dec 2019 19:27:39 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Tomasz Figa <tomasz.figa@gmail.com>,
 Sylwester Nawrocki <s.nawrocki@samsung.com>,
 Linus Walleij <linus.walleij@linaro.org>,
 linux-arm-kernel@lists.infradead.org,
 linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org,
 linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/2] pinctrl: samsung: Enable compile test for build
 coverage
Message-ID: <20191211182739.GA6931@kozik-lap>
References: <20191209163937.8156-1-krzk@kernel.org>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191209163937.8156-1-krzk@kernel.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191211_102744_988410_B2C769EF 
X-CRM114-Status: GOOD (  10.01  )
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.208.66 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (k.kozlowski.k[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.208.66 listed in wl.mailspike.net]
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Mon, Dec 09, 2019 at 05:39:36PM +0100, Krzysztof Kozlowski wrote:
> The Samsung pinctrl drivers require only GPIOLIB and OF for building.
> The should be buildable on all architectures so enable COMPILE_TEST.
> 
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
> ---
>  drivers/pinctrl/samsung/Kconfig | 8 +++++---

Applied both to my tree. I'll send them to you Linus later in pull
request (unless 0-day catches some build failures).

Best regards,
Krzysztof


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
