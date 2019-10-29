Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B703E8942
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 29 Oct 2019 14:19:13 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=wSi4zUd/EOYZGbLrlexubReJs9ewDtirCgPLdIw8zqk=; b=UHWwSkyx/3YHPk
	faN9Bdgx1UT5GL6WlG+cOnpNNLq1L93R7LWkOZCmslRRBzAE/fgD7FtZ5DzjJhX3ZAVm1+qOY87v0
	7NloUCudCakkMszse9RMVYzaeocs4k5wbxursqIRk9yeU5CP0/Gsk8nSeGRsA8pUc2233Dwp1XKUO
	7SjmbZT6UYyjrsBgIk94FbjSUUrmQkvyUIhtVGkvKBet1Pe0VDhBODTSlD0WmZOTwbRY/eiIygxX/
	lvspPH2euIun6M8KPp+XL+2bswAMGknlTpI4610bBj9mt84FPMUIfO/7d+DugqxORkPbUyLImAKYF
	Xfusp4WoeLYyxAs/CKrg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iPROr-0005Pz-8E; Tue, 29 Oct 2019 13:19:05 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iPROh-0005Oi-B8
 for linux-arm-kernel@lists.infradead.org; Tue, 29 Oct 2019 13:18:56 +0000
Received: by mail-pl1-x641.google.com with SMTP id q16so7355577pll.11
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 29 Oct 2019 06:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:openpgp:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=pvuEzJtwy1JCp5X7vm7kUHA8B0ogZ/ZQKVMwcTk3J2c=;
 b=mMPUyzRdTbvZmttcT39vAlD8XQuSMw1OB0uhi2zQDeiKX19RuTkEzwD4DPzEKEriED
 hDXwNagfD5B6P8HaJ1YGUyexAiZ6fW+5O9p86sA7Geeq1BcrCeeyTXUMrjJquQcBDYSZ
 M58G8hECZ2Dcq5BvTUL+QsWucQWNHm0/mMCy/YWr60P702rZs1xunutr4uNVgkjNTCvN
 Wj5PFSmreN8VT5b+V3u4QTMCE5N75NCyWGB2UI4s0SMfdlD6oi1hfDACJMn+0xTzQCuN
 2jVznLsU0WIPED8xb8LmPf9XBws1styHv+jre4JrQbH4+eXB+tBV62W1HqRNMVZOqv3i
 4r5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:openpgp:message-id
 :date:user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=pvuEzJtwy1JCp5X7vm7kUHA8B0ogZ/ZQKVMwcTk3J2c=;
 b=mqkSiJjiiNVTSYM8qT1OUnpYO7XJeT1AwYzyZ1r6OkNnSX27C9Xl+32qVPpBqiIdKy
 0lqxTJnawV/vZ6/afrn8UD9cB0FlizNGGz2OeF6fjskYqM74wufSa+rm51B3dHbDtu+N
 3iM5+11YR4I34991dAc0joEz3LA3X25vk13fnPr/w2z2zQ5K5vYAn7zig1srt2Tw5eW4
 lNOchmZImq1WTBSYfner38k3vLmSNLf2Zn1xNYHuGN2vKbpJx//VPnz+5OYz2p7oySHq
 0qI/pG6cwzC6FoVD8DBK0hRA8SirEylOmf80j3JlYolACagYJq3YIc2rwdrZFXs3tzse
 qIXA==
X-Gm-Message-State: APjAAAXuvS9rrb1joKTF1wCEcLtYFBxethTec9U1UXZuOqDi61S/0puN
 E/dQxdSaZ4botkygZLF39hevgQ==
X-Google-Smtp-Source: APXvYqy9Yzd9eMDthtj14AZwGUiHvvvfwGQQB2LpKxaqTurfBAKOtYBIGduDk9lusHNW3JpAtnB4Cg==
X-Received: by 2002:a17:902:fe95:: with SMTP id
 x21mr3986776plm.53.1572355134404; 
 Tue, 29 Oct 2019 06:18:54 -0700 (PDT)
Received: from [192.168.43.94] ([172.58.27.50])
 by smtp.gmail.com with ESMTPSA id c125sm14602926pfa.107.2019.10.29.06.18.49
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Tue, 29 Oct 2019 06:18:53 -0700 (PDT)
Subject: Re: [PATCH 6/6] s390x: Mark archrandom.h functions __must_check
To: Harald Freudenberger <freude@linux.ibm.com>, linux-arch@vger.kernel.org
References: <20191028210559.8289-1-rth@twiddle.net>
 <20191028210559.8289-7-rth@twiddle.net>
 <935cf73a-d06c-365d-131a-23dcb350ba17@linux.ibm.com>
From: Richard Henderson <richard.henderson@linaro.org>
Openpgp: preference=signencrypt
Message-ID: <cd6b5b8c-77f0-ad7e-702a-27e5a929ca54@linaro.org>
Date: Tue, 29 Oct 2019 14:18:33 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <935cf73a-d06c-365d-131a-23dcb350ba17@linux.ibm.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191029_061855_393579_219DB9DB 
X-CRM114-Status: GOOD (  11.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: linux-s390@vger.kernel.org, Vasily Gorbik <gor@linux.ibm.com>,
 x86@kernel.org, Heiko Carstens <heiko.carstens@de.ibm.com>,
 Christian Borntraeger <borntraeger@de.ibm.com>, linuxppc-dev@lists.ozlabs.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 10/29/19 8:26 AM, Harald Freudenberger wrote:
> Fine with me, Thanks, reviewed, build and tested.
> You may add my reviewed-by: Harald Freudenberger <freude@linux.ibm.com>
> However, will this go into the kernel tree via crypto or s390 subsystem ?

That's an excellent question.

As an API decision, perhaps going via crypto makes more sense,
but none of the patches are dependent on one another, so they
could go through separate architecture trees.

It has been a long time since I have done much kernel work;
I'm open to suggestions on the subject.


r~

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
