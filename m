Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D68F31F639
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 15 May 2019 16:10:29 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=3SmhJMvZLM83At6rKImkpquGrBH6WTxYozvwp1MFCwU=; b=VCAj+Z7IRWdEhF
	efyQbAna8sbyAPGx6FPEw7FMNXFCA6YWHXHUVEObAok241jr4XH6AJmbfRgpNBVn2ASyKS9XgHcez
	+uae8+OTxwSxjTpbU7EV+0OuPfzSFnPrXWWBZkS4Qg0bahAjeoComY4beBPBOSXmfRUOEs/AFri1j
	QpBydYkyWlTXkXKWxNzLm9nBFPWqlWwRRzmnjs1KwWu4Hsw3HU/V7qbpxtVJFb6CufM1ovJWi/CyL
	EQ8Sy5Yql2fk3vTY15xVguL5CwJ7TJSY+Ut5rTfU89jXRrPmM2Dv7Nt8iNpc/cZHED1mSY1xPJd5P
	6pIvFtjuGH6mHUT7IGBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQubz-0002ky-2y; Wed, 15 May 2019 14:10:27 +0000
Received: from mail-io1-xd42.google.com ([2607:f8b0:4864:20::d42])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQubr-0002k6-Gf
 for linux-arm-kernel@lists.infradead.org; Wed, 15 May 2019 14:10:20 +0000
Received: by mail-io1-xd42.google.com with SMTP id g84so2354834ioa.1
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 15 May 2019 07:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:newsgroups:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=bJKKiXfZHHaE5DlOGJdlOVX5mGDL68zBtWY0bhW/6uA=;
 b=MSDWB71CYoxyiah01bf1F5zqjU1MoQmhDvYYLbYgiz8yjIfmtvchCk/Ik5QAOkL6ca
 IteQJ5g98GBQoEDJjlfSBLCGCsKhkiItE1VylU+ueXbvFHkm5qPHd0Hv66kQ8pE9J33v
 BxDiKiPvJXa/g8vCAoI5swKl5YZoRrsN5gHZzyLdDySnxWEmrMXXMLgDdf7Nxm8Lqg/W
 66GtetVRpm0gpUdb9ByHQaFFkLGrwW0Fv6WK/ZnuRa/2KqyrCVg5Jt8K5MpPPsOFt51J
 ViUlwqK/90ZM78Xz0W2YnrLLKQ4Ard1I8aMS5eTvYCM7TcuAsuumLR183xkjPsowwm2U
 +Ygg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:newsgroups:references:from
 :message-id:date:user-agent:mime-version:in-reply-to
 :content-language:content-transfer-encoding;
 bh=bJKKiXfZHHaE5DlOGJdlOVX5mGDL68zBtWY0bhW/6uA=;
 b=eA1JSuHk5SS/dIY9NiLWIDZfDtPE9QcGX0tMlDgGYkc/qMRt44F7EtcZ31x0eSd0Qw
 jnW9EPNk5/j2bJFrzEVZmlivhvZ+6cbzsJkSTXMdMZbj0KLWt++sDMXI61LahjkDdWYK
 NBL2Z8BK+R/xK76hXTm4JPFp6dlKaXKjDcDTiinZSuG9XG0uqeE42fFwn3QtQ3v/ne/L
 J3kn6i051bZguccftECsBNGy41f3RK+1AsBHgWM7zawziKtso/gQYL5Vc+tHXmjsg+3/
 ME44IiYiuIQx73PlIL+9fF8DDpaWDj5o3NzE/VWhKVqGjYs0gllyf4e/lbC8AAtVUX4l
 imag==
X-Gm-Message-State: APjAAAWR1f7zE0J2jENduHJB+dL+fzZHtfDRt87sua8KtCJKd1h255ol
 Q/oKf8pAXjcSuMtINMenhd6fRiQ+
X-Google-Smtp-Source: APXvYqwcZEQnqPFobfTT9ooD47mXfVeRMSKzq+Qe9T+bm955ynqqx8GiA4Zf3Wzi25ls/NCO/XGe9g==
X-Received: by 2002:a5d:851a:: with SMTP id q26mr9307591ion.246.1557929416470; 
 Wed, 15 May 2019 07:10:16 -0700 (PDT)
Received: from [192.168.2.145] (ppp94-29-35-107.pppoe.spdop.ru. [94.29.35.107])
 by smtp.googlemail.com with ESMTPSA id z18sm697958ioi.33.2019.05.15.07.10.13
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Wed, 15 May 2019 07:10:15 -0700 (PDT)
Subject: Re: [PATCH V3 5/8] memory: tegra: Add EMC scaling support code for
 Tegra210
To: Joseph Lo <josephl@nvidia.com>, Thierry Reding
 <thierry.reding@gmail.com>, Peter De Schrijver <pdeschrijver@nvidia.com>,
 Jonathan Hunter <jonathanh@nvidia.com>, Rob Herring <robh+dt@kernel.org>,
 Stephen Boyd <sboyd@kernel.org>
Newsgroups: gmane.linux.ports.arm.kernel, gmane.linux.ports.tegra,
 gmane.linux.drivers.devicetree, gmane.linux.kernel.clk
References: <20190510084719.18902-1-josephl@nvidia.com>
 <20190510084719.18902-6-josephl@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <630d7218-3f5f-88bc-1ba4-065a6200265e@gmail.com>
Date: Wed, 15 May 2019 17:09:34 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <20190510084719.18902-6-josephl@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190515_071019_677476_5AEEFE71 
X-CRM114-Status: GOOD (  13.12  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d42 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, devicetree@vger.kernel.org,
 linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTAuMDUuMjAxOSAxMTo0NywgSm9zZXBoIExvINC/0LjRiNC10YI6Cj4gVGhpcyBwYXRjaCBhZGRz
IHRoZSByZXF1aXJlZCBBUElzIGFuZCB2YXJpYWJsZXMgZm9yIHRoZSBFTUMgc2NhbGluZwo+IHNl
cXVlbmNlIGNvZGUgb24gVGVncmEyMTAuCj4gCj4gQmFzZWQgb24gdGhlIHdvcmsgb2YgUGV0ZXIg
RGUgU2NocmlqdmVyIDxwZGVzY2hyaWp2ZXJAbnZpZGlhLmNvbT4uCj4gCj4gU2lnbmVkLW9mZi1i
eTogSm9zZXBoIExvIDxqb3NlcGhsQG52aWRpYS5jb20+Cj4gLS0tCgo+ICtpbnQgdGVncmFfZW1j
X2R0X3BhcnNlX3BkYXRhKHN0cnVjdCBwbGF0Zm9ybV9kZXZpY2UgKnBkZXYsCj4gKwkJCSAgICAg
c3RydWN0IGVtY190YWJsZSAqKnRhYmxlcywKPiArCQkJICAgICBzdHJ1Y3QgZW1jX3RhYmxlICoq
ZGVyYXRlZF90YWJsZXMsCj4gKwkJCSAgICAgaW50ICpudW1fZW50cmllcyk7ClRoZXJlIGlzIG5v
IGRlZmluaXRpb24gZm9yIHRoaXMgZnVuY3Rpb24uIEFnYWluLCBwbGVhc2UgY2xlYW4gdXAgdGhl
CmNvZGUgcHJvcGVybHkuCgotLSAKRG1pdHJ5CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1h
cm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcv
bWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
