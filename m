Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FDE51042C6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 19:01:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=1IQroxQuFBxeHgXJpPhXrQv0ASwcKe5KiaTupd+PN/g=; b=SWNWpEvFfv56Cm
	UeOlFb8EBXW4EFFksCa3awSBgct7Yv4e3ybfgOexyZkDEp+bnxwxy53XbyxIo8zlMwr3KP7G3wDR2
	TD7snB7ZZws++CqZxeJkIaPMP0LtO7LDhOWROmm+YsSXdN0s5E2etEwymPvnCLfzizO31a1I97LWr
	VQQXuNUqFjGd8aFbqE1cBIVbAu4LCBIFYg1qWg5O0lXQU+tXSOiJf86QttyL24f3n4hhT0/b+CrTY
	P0IcpmYFhB6ZX1mUf55Xs2F1WFNlRzKD26qe86kD2eavOm6VNEvWvdxBBXLtp9pSdK0dcg+ewht5X
	3Q0eyPOhPbAqmEJFbOnQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXUI0-0006zU-Q2; Wed, 20 Nov 2019 18:01:16 +0000
Received: from mail-ot1-f68.google.com ([209.85.210.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXUHr-0006z0-U2
 for linux-arm-kernel@lists.infradead.org; Wed, 20 Nov 2019 18:01:09 +0000
Received: by mail-ot1-f68.google.com with SMTP id w24so386317otk.6
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 20 Nov 2019 10:01:07 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=UtnezaPuJR3DtOQdYq4UX6HRJep5yiFrHSjeRzh0lw8=;
 b=olz0A0wj66RMs9LNd6ojY+ovpMH1w6qA8S5jG1FBV/Chn6G4yU1lvMp0B5JAQuaU/N
 rIDuMS/pSQbOUxUku0cUWlhXMikC9NfnkZN3uB++UAKdnPx4XA4yWP6f2KZihCc8dBU9
 /X6XpKV3K+mOdRd0vVkNt9ZDapnCWTjFeuPB5TO9BJxYO74+o2/GtRUB7eNKSIJhBWVk
 NlvAiBzQV1GEcmGhJuw2o38B9Yc+Zd1YjLxh6eCDtepcCcXOl0gV0DdDO+tCgfb0RVQB
 D1Bw7TBbSfkljWdUivfm+jM1b74DSTXftOR9eg3jgEFbyWrNIX83BnaWDaha0tFPVwlS
 RsUQ==
X-Gm-Message-State: APjAAAWQ80WjmEDxkVe9XNKgdNasTYUrKkNp1cYd9/pRoyJU/YKmUPau
 /3t8KOIM2jRImYIRiOciMA==
X-Google-Smtp-Source: APXvYqynzcOYtJD1o3rqHfApKvPoyf3FBMEtPkZFYjA48wZ6n/YuiuIZDoHhntnj4J8//Fy+4USHdA==
X-Received: by 2002:a9d:70d0:: with SMTP id w16mr3098883otj.239.1574272867110; 
 Wed, 20 Nov 2019 10:01:07 -0800 (PST)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id w25sm8731323otj.45.2019.11.20.10.01.06
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 20 Nov 2019 10:01:06 -0800 (PST)
Date: Wed, 20 Nov 2019 12:01:05 -0600
From: Rob Herring <robh@kernel.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: Re: [PATCH v2] dt-bindings: crypto: Convert stm32 HASH bindings to
 json-schema
Message-ID: <20191120180105.GA11465@bogus>
References: <20191115102427.31224-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20191115102427.31224-1-benjamin.gaignard@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_100107_966425_6F2DA009 
X-CRM114-Status: GOOD (  10.45  )
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.68 listed in list.dnswl.org]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.68 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
Cc: mark.rutland@arm.com, lionel.debieve@st.com, alexandre.torgue@st.com,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-stm32@st-md-mailman.stormreply.com, robh+dt@kernel.org,
 linux-crypto@vger.kernel.org, Benjamin Gaignard <benjamin.gaignard@st.com>,
 davem@davemloft.net, linux-arm-kernel@lists.infradead.org,
 herbert@gondor.apana.org.au
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Fri, 15 Nov 2019 11:24:27 +0100, Benjamin Gaignard wrote:
> Convert the STM32 HASH binding to DT schema format using json-schema
> 
> Signed-off-by: Benjamin Gaignard <benjamin.gaignard@st.com>
> ---
> version 2:
> - add type ref, min, max and default values for dma-maxburst property
> 
>  .../devicetree/bindings/crypto/st,stm32-hash.txt   | 30 ----------
>  .../devicetree/bindings/crypto/st,stm32-hash.yaml  | 69 ++++++++++++++++++++++
>  2 files changed, 69 insertions(+), 30 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/crypto/st,stm32-hash.txt
>  create mode 100644 Documentation/devicetree/bindings/crypto/st,stm32-hash.yaml
> 

Applied, thanks.

Rob

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
