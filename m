Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D753F150617
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  3 Feb 2020 13:24:09 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Sy6lLX6QjcXZlXY4lXYxIgsBKNduSQIyIvIrn7dLs4I=; b=N9JNarsgir2U7T
	FmlFsHoixMKE2sTTRpBUhhCCzyw+f0AXhoK832FhOA7J9wSkF1bh32lY+FE71EfyYK0ioeo7ndtt0
	hCRDi91Q4npReXN/HqcHwoAeAkIyWejsOo2OOhg2M/3LXxCT0W4qIe+KpkKA7dxnIPtGJU48OHSg8
	MBc+N6jrQ1N2jpgwox/RS2+bMbpAhHIsKa7EoGsaHtmfL5Y1RB1u964Ycv/2n0htXAN8iNOQRIVcC
	hqVdqWZ6MAGhf0gDTOCG949S6cfRBOma4e5E/Cj5oMyVd3jDFGvqs56we4IjBSPY2gERBK2cHFS9R
	Kbbd/vX0M35EC8gy4qOA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iyalo-000531-2K; Mon, 03 Feb 2020 12:24:04 +0000
Received: from mail-wr1-f68.google.com ([209.85.221.68])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iyalg-00052D-Mv
 for linux-arm-kernel@lists.infradead.org; Mon, 03 Feb 2020 12:23:58 +0000
Received: by mail-wr1-f68.google.com with SMTP id j104so17801862wrj.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 03 Feb 2020 04:23:56 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=3v/Vs0yeJ3ecKwEer6nb6dCD848+syrgOhZ1MgNf01o=;
 b=HBsjvOiSx9w81k2JJ7JrSwU8mlYovDtDMIMkvw6Rs4nzkhqNqrZc3baSYaw8HTOsTs
 nKW1Z+aRRyGsulEiUFwcylA0q3nMKQd8UR/lmec9OBWCMX3gVnt+1+PWfIw4MmWja9Wp
 1X9VSnFIYoF8ZJK/hedc0H8YU3FzC1SIR8b34cGqwI6iwfKH5DE1OSe6al3w68TZLIrh
 Bc8akcbkMBbfUxGI3AN33FBJLzjqN3N8dPtuB3/QEfU+uYMVgCT5NujtOGi7JPE8inKD
 ehCXz2IPKkjvBYnZmOkY0mZ5TU2SI1jHezqc8zIgjP4WRy3nfaVKRar65obU+XcScyv3
 7l6g==
X-Gm-Message-State: APjAAAU5eCCncaRv2O4pe2bWn57wBz9kW5el5j4kh1ONpVlib5z2QFgE
 rtui1KsIbwTCF2lUusQfKQ==
X-Google-Smtp-Source: APXvYqzm7oTIsPC2zqv1FVF4iP/x1vKYv6xy17lG21/YsbaWyAoqw9qpdPt25TTkhLOPw4zWj+CrZQ==
X-Received: by 2002:a5d:620b:: with SMTP id y11mr15162486wru.230.1580732635248; 
 Mon, 03 Feb 2020 04:23:55 -0800 (PST)
Received: from rob-hp-laptop ([212.187.182.163])
 by smtp.gmail.com with ESMTPSA id n1sm25145622wrw.52.2020.02.03.04.23.53
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 03 Feb 2020 04:23:54 -0800 (PST)
Received: (nullmailer pid 26802 invoked by uid 1000);
 Mon, 03 Feb 2020 12:23:52 -0000
Date: Mon, 3 Feb 2020 12:23:52 +0000
From: Rob Herring <robh@kernel.org>
To: Alain Volmat <alain.volmat@st.com>
Subject: Re: [PATCH 2/5] dt-bindings: i2c: i2c-stm32f7: add st,stm32mp15-i2c
 compatible
Message-ID: <20200203122352.GA26745@bogus>
References: <1579795970-22319-1-git-send-email-alain.volmat@st.com>
 <1579795970-22319-3-git-send-email-alain.volmat@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1579795970-22319-3-git-send-email-alain.volmat@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200203_042356_772138_5911BF65 
X-CRM114-Status: GOOD (  10.14  )
X-Spam-Score: 0.7 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.7 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.221.68 listed in list.dnswl.org]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_MSPIKE_H2      RBL: Average reputation (+2)
 [209.85.221.68 listed in wl.mailspike.net]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
 wsa@the-dreams.de, linux-kernel@vger.kernel.org, pierre-yves.mordret@st.com,
 alain.volmat@st.com, robh+dt@kernel.org, linux-i2c@vger.kernel.org,
 mcoquelin.stm32@gmail.com, fabrice.gasnier@st.com,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Thu, 23 Jan 2020 17:12:47 +0100, Alain Volmat wrote:
> Add a new stm32mp15 specific compatible to handle FastMode+
> registers which are different on the stm32mp15 compared
> to the stm32f7 or stm32h7.
> 
> Signed-off-by: Alain Volmat <alain.volmat@st.com>
> ---
>  Documentation/devicetree/bindings/i2c/st,stm32-i2c.yaml | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
