Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C5D6C113768
	for <lists+linux-arm-kernel@lfdr.de>; Wed,  4 Dec 2019 23:01:52 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=vsgDetseqn0ZuI+7qvZe0FpcnC0+38W2giZkirw4zJE=; b=NKFT1uK7XtWAoT
	E398DeT+qOw/6yijdLVLdg6QbhcTuPpU5jDE7s0H5+lrlIejvUvJdfKTcB1WyWwABMNtnOUpnqZx6
	RYmEK2dydvhAinrH0ypj7+KqHz+UlX806M8T6VStdcTVMlUJCAkOelJbU+sHfPefdIkWZwUzs7IbT
	/kiq3PZ2NmyQ9TvELShuvtgYKI+bOfU+DujqpDPkjKLlFBvRGOpJ2Kyy3TekCTVCiVNT6ZQtMYCF1
	5ThA/5RTajuztGPERn0HzQ3ROkkaXWuXuNsatNzxD4UYtPDTFjWwt5mPri84YrrkFDBGGe5/uQKZ3
	vjL5SWJnfl560xG4ThdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icciO-0003by-Fr; Wed, 04 Dec 2019 22:01:44 +0000
Received: from mail-ot1-f67.google.com ([209.85.210.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icciH-0003ba-Ab
 for linux-arm-kernel@lists.infradead.org; Wed, 04 Dec 2019 22:01:38 +0000
Received: by mail-ot1-f67.google.com with SMTP id 66so699163otd.9
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 04 Dec 2019 14:01:36 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=qKR6o4UGPy9iqIfUp6iJ8SJ9UqWScNbqbObfmkhLaUM=;
 b=jLxiGyi7Nn6PbhoPAg8+eTkLiXUONM3gBKxe12F1FsCormGx0rnqz2uA/9yM9rSErh
 HQAMB9sukowc55Bwq5VIq9R5JZdsFYEeU7P6cRWtNduwR/0dWzJXB1pp//PQbq1W8rri
 BoDPlJT9B1Paw0AsBlSbtVv18wuWjNqyhxtSjP+0Ba3BlQKoJ9BOIPDU8Eo0dgMAkecS
 QlvM6tbqMr8E2ZcdghNWZ/UCeaEMdtepSCrrI68JR1+E2M1BZWZYtQG2K9sXgZNSCprY
 7Sroq+nFJ2Xlp2TespWgtZTtXx5R501Mvw0ODjExlmf+Dv1efAxA/Eg7GQUW6E5XGRji
 ftjg==
X-Gm-Message-State: APjAAAX+I7FvkhxsUBTnfiaRkFv9nV8vQwkMtXTSlDDB6CftFK+MtYGK
 hHVc0iIqDbMdyOpTTWtiFw==
X-Google-Smtp-Source: APXvYqwrPt2PI9ParnlGucs0G+mALP2GoBO6N+l83sOY7Tbcy0oTsamiEFYR6brfLpKlt++s6q558g==
X-Received: by 2002:a05:6830:1211:: with SMTP id
 r17mr4309425otp.157.1575496896226; 
 Wed, 04 Dec 2019 14:01:36 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id i15sm2625353otl.69.2019.12.04.14.01.35
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 04 Dec 2019 14:01:35 -0800 (PST)
Date: Wed, 4 Dec 2019 16:01:34 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH] dt-bindings: regulator: Convert stm32 vrefbuf bindings
 to json-schema
Message-ID: <20191204220134.GA25911@bogus>
References: <20191122104536.20283-1-benjamin.gaignard@st.com>
 <20191122104536.20283-2-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191122104536.20283-2-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191204_140137_362646_C27899E6 
X-CRM114-Status: UNSURE (   9.88  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.67 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.67 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, alexandre.torgue@st.com,
 linux-kernel@vger.kernel.org, robh+dt@kernel.org, lgirdwood@gmail.com,
 broonie@kernel.org, Fabrice Gasnier <fabrice.gasnier@st.com>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org,
 Benjamin Gaignard <benjamin.gaignard@st.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 22 Nov 2019 11:45:36 +0100, Benjamin Gaignard wrote:
> Convert the STM32 regulator vrefbuf binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> CC: Fabrice Gasnier <fabrice.gasnier@st.com>
> ---
>  .../bindings/regulator/st,stm32-vrefbuf.txt        | 20 ---------
>  .../bindings/regulator/st,stm32-vrefbuf.yaml       | 52 ++++++++++++++++++++++
>  2 files changed, 52 insertions(+), 20 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.txt
>  create mode 100644 Documentation/devicetree/bindings/regulator/st,stm32-vrefbuf.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
