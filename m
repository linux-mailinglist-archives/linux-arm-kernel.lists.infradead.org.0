Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CF69316F6
	for <lists+linux-arm-kernel@lfdr.de>; Sat,  1 Jun 2019 00:09:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=/YjGUgHVHFxca0VyLuW8NzbFXZmCQSgTU1UHVS56Qts=; b=lVZoB+IHIbOJR+
	7Gm+CULpxPjz8VlgYluGijizKtkUAu72dh5Uaw0uuNtqE0HCZe2qo5+Y2IbKFs80sYj8CjbmtLk7G
	5RPS/rpK8i1lkgGazqU8p5eHQIVr9/dd96AL0uN+NlN2VmBcq4Yg/JmWc1XTy6Zht7AXi132nDAyd
	UIoWt7RoXSx6dYjnmO8d24EFl4FwdL1OA7AUc6uhMr0TyJmf23Zf33SbBev3g09d6KWKJZIfghuSX
	MB4ta+wPIA5c5dhYYU6YYtJJBzmu1AP9g1BG5KKUEw24oaKuF60ZIlW6nnSXR14HrwvnA5y3uqUXc
	2H0HPmbKhr9clLQXKA7g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hWphk-0005dr-NQ; Fri, 31 May 2019 22:08:53 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hWphe-0005cw-9Q
 for linux-arm-kernel@lists.infradead.org; Fri, 31 May 2019 22:08:47 +0000
Received: by mail-it1-x144.google.com with SMTP id g23so11956124iti.1
 for <linux-arm-kernel@lists.infradead.org>;
 Fri, 31 May 2019 15:08:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=rk8vi2GT1Kz6DVRVbKN7nB2fCQvo4oUTFPvog4etFog=;
 b=RoAJZNVM9UNtsbDZIxdhytc/h/nYGp4cX/w7asLBFt+LL3YGdpSFVdLJ/u8wre27ep
 Zc72jhZEh9jdHPOl1iKQZqxVWeScamm/sKR1VLGzQx1nnXuZI+0MZf4kU+I8mYs+b6aU
 0reiCICEaCdyO23EgeaBnKv2ESrzeKJv8FFJmVeneKkyZKYZjb41UYFYC3JxzhU0ZMM7
 mLAEUPHlWqUQcTH3HrhRi39Dwvdc2zpwscy8iKNdbA6tJrTqOdtBEbVvoizFMbfRjwcl
 RcsfdbcOMjq7AKJqPUOpZehjtHVamaPcM26USwWACHuapHEqvJjFXNLfN3dULvKiJkcX
 SNdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=rk8vi2GT1Kz6DVRVbKN7nB2fCQvo4oUTFPvog4etFog=;
 b=VlDrkGTcJZbEiGCiDjsD1LIv8n8CvqUkNevTB4DgrvdwkptgJGBIGU6Pfs/z5mRtBK
 USY6TCWgihL/JeCLUPm8Yd49Bl+/uPMvIhjriVX6/jFbjkWlV4RizZF2trAYDnpRDawG
 991HtRcEBKfrlnL4Vkko0g67OtgEIxDimzxcvnuHHMlyz0S6eJwzZGFMdqnT/fkVFY31
 fxNyJ46JSVMfmK70HIMGpjftj/q4uWdw0NsGLfkcokAIpkgING9zdxuhgjDE6HtR5vjo
 DoI1e0mE7B8KfvSs5oPgRNWrRVHz/L42mYH7c/cmkcaKIZKh9M87iTXtKjWB1gJwEmhC
 e8DA==
X-Gm-Message-State: APjAAAXjQtiCx/jWB3DefJwy6O1biPKiVHx343lRRpybEKqZdGDr9RCS
 xuj5Q60IQJdTI41h0mDXcofKog==
X-Google-Smtp-Source: APXvYqzH+EMg6SX+BlsymH4Hq994bzynu2+kAA7hlzRr88AMlhERcDm6qIxgsjuFesiRwjur1MEYsA==
X-Received: by 2002:a02:b817:: with SMTP id o23mr8340150jam.134.1559340522683; 
 Fri, 31 May 2019 15:08:42 -0700 (PDT)
Received: from [172.22.22.26] (c-71-195-29-92.hsd1.mn.comcast.net.
 [71.195.29.92])
 by smtp.googlemail.com with ESMTPSA id p11sm3398687itc.2.2019.05.31.15.08.41
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Fri, 31 May 2019 15:08:42 -0700 (PDT)
Subject: Re: [PATCH v2 00/17] net: introduce Qualcomm IPA driver
To: Arnd Bergmann <arnd@arndb.de>
References: <20190531035348.7194-1-elder@linaro.org>
 <e75cd1c111233fdc05f47017046a6b0f0c97673a.camel@redhat.com>
 <065c95a8-7b17-495d-f225-36c46faccdd7@linaro.org>
 <CAK8P3a05CevRBV3ym+pnKmxv+A0_T+AtURW2L4doPAFzu3QcJw@mail.gmail.com>
 <a28c5e13-59bc-144d-4153-9d104cfa9188@linaro.org>
 <CAK8P3a2rkQd3t-yNdNGePW8E7rhObjAvUpW6Ga9AM6rJJ27BOw@mail.gmail.com>
From: Alex Elder <elder@linaro.org>
Message-ID: <5ebccdbe-479d-2b7d-693c-0c412060d687@linaro.org>
Date: Fri, 31 May 2019 17:08:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.7.0
MIME-Version: 1.0
In-Reply-To: <CAK8P3a2rkQd3t-yNdNGePW8E7rhObjAvUpW6Ga9AM6rJJ27BOw@mail.gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190531_150846_394121_AF7EA5A3 
X-CRM114-Status: GOOD (  28.80  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: DTML <devicetree@vger.kernel.org>, syadagir@codeaurora.org,
 Eric Caruso <ejcaruso@google.com>, Dan Williams <dcbw@redhat.com>,
 Networking <netdev@vger.kernel.org>,
 Ilias Apalodimas <ilias.apalodimas@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, evgreen@chromium.org,
 Bjorn Andersson <bjorn.andersson@linaro.org>, abhishek.esse@gmail.com,
 Linux ARM <linux-arm-kernel@lists.infradead.org>,
 linux-arm-msm@vger.kernel.org,
 Subash Abhinov Kasiviswanathan <subashab@codeaurora.org>,
 linux-soc@vger.kernel.org, David Miller <davem@davemloft.net>,
 cpratapa@codeaurora.org, Ben Chan <benchan@google.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 5/31/19 4:12 PM, Arnd Bergmann wrote:
> On Fri, May 31, 2019 at 10:47 PM Alex Elder <elder@linaro.org> wrote:
>> On 5/31/19 2:19 PM, Arnd Bergmann wrote:
>>> On Fri, May 31, 2019 at 6:36 PM Alex Elder <elder@linaro.org> wrote:
>>>> On 5/31/19 9:58 AM, Dan Williams wrote:
>>>>> On Thu, 2019-05-30 at 22:53 -0500, Alex Elder wrote:
>>>
>>> Does this mean that IPA can only be used to back rmnet, and rmnet
>>> can only be used on top of IPA, or can or both of them be combined
>>> with another driver to talk to instead?
>>
>> No it does not mean that.
>>
>> As I understand it, one reason for the rmnet layer was to abstract
>> the back end, which would allow using a modem, or using something
>> else (a LAN?), without exposing certain details of the hardware.
>> (Perhaps to support multiplexing, etc. without duplicating that
>> logic in two "back-end" drivers?)
>>
>> To be perfectly honest, at first I thought having IPA use rmnet
>> was a cargo cult thing like Dan suggested, because I didn't see
>> the benefit.  I now see why one would use that pass-through layer
>> to handle the QMAP features.
>>
>> But back to your question.  The other thing is that I see no
>> reason the IPA couldn't present a "normal" (non QMAP) interface
>> for a modem.  It's something I'd really like to be able to do,
>> but I can't do it without having the modem firmware change its
>> configuration for these endpoints.  My access to the people who
>> implement the modem firmware has been very limited (something
>> I hope to improve), and unless and until I can get corresponding
>> changes on the modem side to implement connections that don't
>> use QMAP, I can't implement such a thing.
> 
> Why would that require firmware changes? What I was thinking
> here is to turn the bits of the rmnet driver that actually do anything
> interesting on the headers into a library module (or a header file
> with inline functions) that can be called directly by the ipa driver,
> keeping the protocol unchanged.

You know, it's possible you're right about not needing
firmware changes.  But it has always been my impression
they would be needed.  Here's why.

It looks like this:

           GSI Channel   GSI Channel
               |             |         
  ----------   v   -------   v   -------------
  | AP (ep)|=======| IPA |=======|(ep) Modem |
  ----------       -------       -------------

The AP and Modem each have IPA endpoints (ep), which use GSI channels,
to communicate with the IPA. Each endpoint has configuration options
(such as checksum offload).  I *thought* that the configurations of
the two endpoints need to be compatible (e.g., they need to agree on
whether they're aggregating).  But with your questioning I now think
you may be right, that only the local endpoint's configuration matters.

I will inquire further on this.  I *know* that the AP and modem
exchange some information about IPA configuration, but looking more
closely that looks like it's all about the configuration of shared
IPA resources, not endpoints.

That said, the broader design (including the user space code)
surely assumes rmnet, and I don't have any sense of what impact
changing that would make.  I am sure that changing it would not
be well received.

					-Alex

>>> Always passing data from one netdev to another both ways
>>> sounds like it introduces both direct CPU overhead, and
>>> problems with flow control when data gets buffered inbetween.
>>
>> My impression is the rmnet driver is a pretty thin layer,
>> so the CPU overhead is probably not that great (though
>> deaggregating a message is expensive).  I agree with you
>> on the flow control.
> 
> The CPU overhead I mean is not from executing code in the
> rmnet driver, but from passing packets through the network
> stack between the two drivers, i.e. adding each frame to
> a queue and taking it back out. I'm not sure how this ends
> up working in reality but from a first look it seems like
> we might bounce in an out of the softirq handler inbetween.
> 
>           Arnd
> 


_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
