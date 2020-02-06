Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8BBBA154D3C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  6 Feb 2020 21:46:32 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dW8ahYCMgnCZOsiL02YK6NOW+07/9WpwOcFx9C0uazw=; b=nTE8p+WWGBcnYZ
	qr8tQXWWLHpWixaDWFWkL2fAqFIiSPyS9bsfKfjsfwnVu4SkMHJVUgCpZlYb+evKjDhtN/v+zxyNX
	CBxnfFEu7J9tjHihGFF3RzRZ1zeII9YHdVMG3QkG605jSP6mCz79jdOG2DeM+l1gDbl2r6LHSlGrM
	TOZrwwQecRN2z7njlFjI1/JLoP6xWW1S0iadSoVO/X/zjmXOf6NJ1dk+ivUKyXMTcPBnJi7E7Txrp
	BU1kcTfjy5ZrTKYRyNU4AoUJvwdIaKL2eeF/umBvRU+rrObg4wj6og3fbID0cSEPWbKxkA08Htq5G
	Kf+8gOS/7WjrxL8tF5ug==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1izo2Z-000814-LL; Thu, 06 Feb 2020 20:46:23 +0000
Received: from mail-pj1-f67.google.com ([209.85.216.67])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1izo26-0007mc-TC
 for linux-arm-kernel@lists.infradead.org; Thu, 06 Feb 2020 20:45:56 +0000
Received: by mail-pj1-f67.google.com with SMTP id m13so496152pjb.2
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 06 Feb 2020 12:45:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=7t1ZBW9g5wlG8KTvc0XcPIxcORXLml7TZ0TKspaLkvA=;
 b=jZZwNMQYwGC2cGPLqsbdXcQm/nFqk3BOHM7DB5M26CFg/0BE3AgLLGzsWW19PO+s8G
 UOXBvYuFoj9bekl8r9ez5Ckel3VkrqVRFNfh50fH8xJm8mcOL4sPasGKkTjGPRoVRuV+
 XXoaYv6yW6pu92JrqJNhg7HL3kAg/4HrjFhYnNQhKSJ44Ff2t/euMVjwP7ZEA5wfL3la
 tn0rtzxTFiSPhOeoG3iVMQYMf0IZx5EKNHt34jSt2Q17hi0gfpi6PWyY6Vh6jNq/5sfb
 GjRXkQivOZE9LElmTzC0wGfZGTT0q1GBIP8o8+rWrAXPD8n/aCTm7iPkn43L3foTYp20
 WU3Q==
X-Gm-Message-State: APjAAAVKwameXMwZz8KoxWQj7tcFJdK7xy+JDtVQd9uSr2nuappiMdw4
 OCCNhKbuHigpfpXNNHTczA==
X-Google-Smtp-Source: APXvYqzHq35xMKGzxw/a8MEVmjvvcJB0PiyrMJ12ZZgUVekYH3aTlmRKhxb8cjo4/eurccisZ8lRXw==
X-Received: by 2002:a17:902:5a44:: with SMTP id
 f4mr6093219plm.328.1581021953661; 
 Thu, 06 Feb 2020 12:45:53 -0800 (PST)
Received: from rob-hp-laptop (63-158-47-182.dia.static.qwest.net.
 [63.158.47.182])
 by smtp.gmail.com with ESMTPSA id z10sm275754pgz.88.2020.02.06.12.45.51
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Feb 2020 12:45:53 -0800 (PST)
Received: (nullmailer pid 15150 invoked by uid 1000);
 Thu, 06 Feb 2020 19:08:40 -0000
Date: Thu, 6 Feb 2020 19:08:40 +0000
From: Rob Herring <robh@kernel.org>
To: Olivier Moysan <olivier.moysan@st.com>
Subject: Re: [PATCH 1/4] dt-bindings: iio: adc: sd modulator: add vref support
Message-ID: <20200206190840.GA15088@bogus>
References: <20200204101008.11411-1-olivier.moysan@st.com>
 <20200204101008.11411-2-olivier.moysan@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200204101008.11411-2-olivier.moysan@st.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200206_124554_951718_9DEBD3C5 
X-CRM114-Status: UNSURE (   9.24  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.8 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.8 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.216.67 listed in list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [robherring2[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit [robherring2[at]gmail.com]
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.216.67 listed in wl.mailspike.net]
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
Cc: mark.rutland@arm.com, devicetree@vger.kernel.org, lars@metafoo.de,
 olivier.moysan@st.com, linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org, pmeerw@pmeerw.net,
 knaack.h@gmx.de, linux-stm32@st-md-mailman.stormreply.com, jic23@kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On Tue, 4 Feb 2020 11:10:05 +0100, Olivier Moysan wrote:
> Add vref supply support to sigma delta modulator.
> 
> Signed-off-by: Olivier Moysan <olivier.moysan@st.com>
> ---
>  .../devicetree/bindings/iio/adc/sigma-delta-modulator.yaml    | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
