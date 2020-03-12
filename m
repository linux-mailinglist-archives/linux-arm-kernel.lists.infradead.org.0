Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EB89318274D
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Mar 2020 04:10:23 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=OzLk0vFC+sp1zSq5mZlaZTCalrTQND7NXuHGAV7bf6g=; b=A074fYg3IrQS7X
	xUtakQE1a6SQT/iM5tz6Z83+H+y+7nVEqcvLxEY2Duduz0QcHfktU0/EP84hD3r+eMyBaXqGvPFcL
	7pF7WwIGWOfHv/i8ufPpqTuDe7yYjx5VpPvYLAB8ME9HbZtKDw8Jj7QTx018XuR4CJ0s7eIbEMOCA
	7mv7UYan2mR9y3Tf2x0VteSCd5T7up9Z3eoQ0OdHbJLBRRDZqy33zp761poOla7oMKTzcmFaJutMV
	hUL0fZDdQlRmvAI+P1A2vxQk+C/uvlcuddc74LkTdQgx+MU4muiJP9sVbtHF2FgHcqqQ6xBNc981P
	c5FSIbRRxLSlcpuhyQwQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCEEg-0000Ui-NY; Thu, 12 Mar 2020 03:10:14 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCEEW-0008GK-2u
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Mar 2020 03:10:05 +0000
Received: by mail-io1-xd42.google.com with SMTP id d8so4153915ion.7
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 11 Mar 2020 20:10:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=7UlCPqaifwtaHRBNM9OlkA92uhGP3P8YtjrPHhM2qXA=;
 b=MymNgzFAjC7botrqgoNNcIOUuAsnEj/YaRhp929DK9qF9NTSCoVLgqQuyUlCuuWbmc
 xTX8qnat5Lhd0dx2+HvITd9I3p8W2oFWYYiLmPSxLhHu9VDmI3IenMvfEFdho/S8vd2I
 yuLM73a7S/wx1yoSfX+QL5qO2LsLHWifPuA0hRfAhHp4rftW0kW6WLVBjS4J0fyOpN3O
 7r/1++AmSjZryTn2MxF74XgpKzfez6QsJWgBfcCvVchXvT9agRNixKTJPc0eob3a5Q1X
 xoLsGG5eL0WYwn6be71SqmjgQeJZ5NZqTQtoyqlEcSz37jy3pIQVaP16SIN7GWzqFG9X
 3jyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=7UlCPqaifwtaHRBNM9OlkA92uhGP3P8YtjrPHhM2qXA=;
 b=frXKm9AYOLZe2CKVW1mutEMWHe6nDNtVLDLgsOdFULJCc/tfelt0Cij5gkz3FLzGbY
 vVt/81aKCpxRLGe0uyRDv4EklLqzzInItptwexDQg+BlpRP11TJysTvDlptJlKWKSxKr
 +961JKTXGCMJr8Hz1hH/JsOGsdA42oyXAE22URsusRuRsBpWxINKiQdyaob2SKWO5pFx
 uS+9pR8pOr9qPDKm15VQpPyBGlROmN+7FODkGx+ilHJNYWUbWhAqN2yD1y8acdDVR1/w
 Zb4X1GuRCzDX+oxKN4KZCH8U1tw2navNyWe4CwSrj1n3vi98/KD82yffmn1Dgafq8jvQ
 MVaA==
X-Gm-Message-State: ANhLgQ1GFtH8CRmDvduw6ZUgO5ioRxMKbJhlUYGO82HHzvWq2kGpQrH0
 98YmCyyOpmAySSUVJQqtoSY5Kg==
X-Google-Smtp-Source: ADFU+vs/imBUNrCpmlxjMLXtYVDj0Q3NbjhYgAeR0ptUEQhLsK2b4DLsRH6n4QvzTYidB9g45CZyjQ==
X-Received: by 2002:a6b:6606:: with SMTP id a6mr5411023ioc.8.1583982602672;
 Wed, 11 Mar 2020 20:10:02 -0700 (PDT)
Received: from [172.22.22.26] (c-73-185-129-58.hsd1.mn.comcast.net.
 [73.185.129.58])
 by smtp.googlemail.com with ESMTPSA id y18sm12685362ilg.82.2020.03.11.20.10.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 11 Mar 2020 20:10:02 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver (UPDATED)
To: Dave Taht <dave.taht@gmail.com>
References: <20200306042831.17827-1-elder@linaro.org>
 <CAA93jw5enz6-h1m=7tGFToK+E+8z3aD80pBef4AYkFrS2u3hHQ@mail.gmail.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <e4f436b4-3dd7-970a-9b08-7601fc5428d2@linaro.org>
Date: Wed, 11 Mar 2020 22:09:56 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <CAA93jw5enz6-h1m=7tGFToK+E+8z3aD80pBef4AYkFrS2u3hHQ@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_201004_162774_28B80D26 
X-CRM114-Status: GOOD (  20.02  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Mark Rutland <mark.rutland@arm.com>, Ohad Ben-Cohen <ohad@wizery.com>,
 Susheel Yadav Yadagiri <syadagir@codeaurora.org>,
 Eric Caruso <ejcaruso@google.com>, Arnd Bergmann <arnd@arndb.de>,
 devicetree@vger.kernel.org, Dan Williams <dcbw@redhat.com>,
 Linux Kernel Network Developers <netdev@vger.kernel.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
 Bjorn Andersson <bjorn.andersson@linaro.org>,
 Siddharth Gupta <sidgup@codeaurora.org>, Andy Gross <agross@kernel.org>,
 Evan Green <evgreen@google.com>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 Johannes Berg <johannes@sipsolutions.net>, linux-soc@vger.kernel.org,
 David Miller <davem@davemloft.net>,
 Chaitanya Pratapa <cpratapa@codeaurora.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 3/9/20 11:54 AM, Dave Taht wrote:
> I am happy to see this driver upstream.
> 
>> Arnd's concern was that the rmnet_data0 network device does not
>> have the benefit of information about the state of the underlying
>> IPA hardware in order to be effective in controlling TX flow.
>> The feared result is over-buffering of TX packets (bufferbloat).
>> I began working on some simple experiments to see whether (or how
>> much) his concern was warranted.  But it turned out that completing
>> these experiments was much more work than had been hoped.
> 
> Members of the bufferbloat project *care*, and have tools and testbeds for
> exploring these issues. It would be good to establish a relationship with
> the vendor, obtain hardware, and other (technical and financial) support, if
> possible.
> 
> Is there any specific hardware now available (generally or in beta) that
> can be obtained by us to take a harder look? A contact at linaro or QCA
> willing discuss options?

There exists some hardware that could be used, but at the moment I have
not ported this code to operate on it.  It is a current effort however,
and I will be glad to keep you in the loop on progress.  There are a
couple of target environments we'd like to support but until last week
the primary goal was inclusion in the upstream tree.

I will follow up with you after the dust settles a little bit with
this patch series, maybe in a week or so.  In the mean time I'll
also find out whether there are any other resources (people and/or
hardware) available.

					-Alex

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
