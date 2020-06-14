Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBF2D1F8711
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 14 Jun 2020 06:49:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=5BizJ7CpoKHB1ZFXbKVqYgJRWn1QGT/BczRRnWwq0f0=; b=gCnSJXOW74uRILTXLVwt0lW7bC
	5yLYMfnlRZNziRj54Yj1vCTGaE+i8ZP7GH+EBe9o7h8iRHA/AFUxEYP8LcJmSD1m2XC+MEikLfi8B
	D8I51i/oHT+Ms/7XX66yxjVt/aMuG80k6U3cqBebVc+6OArcdRgQ7hWrNUN6tR9q1uvF1F6+n2rH8
	+gySylsJ5RQJr7dAnSta9bWjKO8LXg4w+I4vJKnGHTuB5Xhx/IanPS5t7ZogJw1q8alxfsaqK1rFO
	bMOGyNq6QTll7Nkx0QMVP2o3gLkZSjx+WExNEfaq+38UbNA4RDSwYAz3z0n1BtDLf6/BIKzH+PYcX
	BdiD2qEw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jkKZo-00010K-7B; Sun, 14 Jun 2020 04:49:00 +0000
Received: from mail-pf1-x443.google.com ([2607:f8b0:4864:20::443])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jkKZe-0000zy-He
 for linux-arm-kernel@lists.infradead.org; Sun, 14 Jun 2020 04:48:51 +0000
Received: by mail-pf1-x443.google.com with SMTP id s23so6320530pfh.7
 for <linux-arm-kernel@lists.infradead.org>;
 Sat, 13 Jun 2020 21:48:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=K8Gg3XCjSOi8jPFx//K93rkSBIpmbj/kO0LAEeBzZ7A=;
 b=Bh02xa481JKuT5T4a6EZgLadt2tgUf3qQbu2hrxpNP0lwhEJewFERM+tYk2TJudWWD
 DKGwMiie0nm4yP9GJ/Sxu7zYtC9YVFnabhCy7Spem+iifpQlVaKc8r/Hm8255+Co8GBu
 hi3K+jckShrPVX/OE9++TNrbAeYEQTs9slejE7+CmUWi4iG1N1QVoZ+fwAWbDIEbDRFp
 q9drWhHbxOON+xtPHfPChsHkFAHG4TrB8qrjO3qgSv9xFL3KZi1Cf0Mxkk59mhCzr8f6
 K0QBVt/eGcU5DOk+O0DITpV7kva42aW+G0TnvUZiJftTmEzl1aAQKQCzk13fhn85egs1
 5btw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=K8Gg3XCjSOi8jPFx//K93rkSBIpmbj/kO0LAEeBzZ7A=;
 b=raOGVvRYnvkvzjnjkIpZMod1hpuCdL6oXJAUzCUXuHnTKUr1Peru5Oq/pJSQgxDPyZ
 HBGnNoJmBTkNOUttbF4WsXTIRlTa8wqAXh4u7gFmHGITSaYsWeRbHAo/RRKMSRtfMb10
 QudUHehtr8OhkHI1fJtxxXUYUv67YYpJeCxvpk26dKDfM20HgZiuFoC8mXbGZAZN5iBQ
 I26c2iNA1rvWOWcBOH6FScCKB00kZol4fVUSU9wjpqU5snzsivhyDavNAXwISyn+grD1
 mAzJncP4NLmXLoRkQfQ6ioDiO+1A+j/7kYJAKiVZXUZyPRHrcgaeHZq/0kUTUn2iQSX5
 uONw==
X-Gm-Message-State: AOAM530yTSSaaePH5RJgznR+j1GHQxSd2VxxH7oNNnErchXIJ1Hb31Qa
 2Ysd4jOzg5LTRLrsAIWKDVP6cQRA
X-Google-Smtp-Source: ABdhPJyKrCrf8gn9eKJDTSMS/FDWNaHKwW2pYCRg49cZqxI5ntBD8c2w0uNWCPnLadpB0ctMBwcwow==
X-Received: by 2002:aa7:84d9:: with SMTP id x25mr18597156pfn.300.1592110129689; 
 Sat, 13 Jun 2020 21:48:49 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 b19sm8845416pjo.57.2020.06.13.21.48.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 13 Jun 2020 21:48:48 -0700 (PDT)
Subject: Re: [PATCH v4 9/9] mips: bmips: dts: add BCM63268 power domain support
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, f.fainelli@gmail.com, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200610171630.465579-1-noltari@gmail.com>
 <20200613082140.2009461-1-noltari@gmail.com>
 <20200613082140.2009461-10-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <a91dfec1-64f1-e1b1-73b6-67e9e96ce38d@gmail.com>
Date: Sat, 13 Jun 2020 21:48:44 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200613082140.2009461-10-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200613_214850_583525_2032D7C9 
X-CRM114-Status: UNSURE (   7.32  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:443 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzEzLzIwMjAgMToyMSBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IEJDTTYzMjY4IFNvQ3MgaGF2ZSBhIHBvd2VyIGRvbWFpbiBjb250cm9sbGVyIHRvIGVuYWJsZS9k
aXNhYmxlIGNlcnRhaW4KPiBjb21wb25lbnRzIGluIG9yZGVyIHRvIHNhdmUgcG93ZXIuCj4gCj4g
U2lnbmVkLW9mZi1ieTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNv
bT4KCkFja2VkLWJ5OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0g
CkZsb3JpYW4KCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
