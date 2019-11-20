Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 120D8104056
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 20 Nov 2019 17:09:00 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=5xL43JvHqkkXHJtsSCoIAW/+H3Lyxz+bbxJJ/3x0hCo=; b=VHJL4Cc8xEB63F
	lz6HwbWiIWq0PJgYg8Lcat7c9YiRQRiyyTcRyQjagy7uKiA1Wad7arEpvDojgBgdWWy0v3ZYtEiqM
	NoYC/kjKoymxoxBeBjYg++bMKwRPkYrcJsiVl6ryuh4gPDzP1JLDzCJglD9h/CJ2AlVRMLA6ZwKk2
	LREtcOPuM9VUI3TFPVliOAiQvktuKq+0LLyyTIizZCoXYMPMYCm+wZTiqXr1/V1HkUSQXoSNzYS8S
	c65dnw/HvWLuj4RJJr2kcteJANc6OdLMeeyEOWzRQm2dQ7vxQdl5PWtNGZ2yIAJ744LfnE+x/LwuF
	W6GJSyNnk42iHlZm6kYw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXSXE-0004mt-QO; Wed, 20 Nov 2019 16:08:52 +0000
Received: from mout.gmx.net ([212.227.15.15])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXSX6-0004mQ-8z; Wed, 20 Nov 2019 16:08:46 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1574266118;
 bh=VPRug7+HSvbebtgoesxzkq1RJlesAxyAx8j/x5VtNyg=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=dxf4l3ZN8XUjfHH8AbAqsyZhlekVfmnGyCnTVgHPin3nZ06ejiZCbnHY2yoEdUPT7
 Q7U4b4vQ22JTjkv7rRPZq/pec/GxA5PzyN2aDFJQJCBdnTlHjlWiwCTMKPuQB/KF1h
 tarE9TV81aqIJlBMFhRS8i/oEy67zba7NnXCiTjs=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.176] ([37.4.249.139]) by mail.gmx.com (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1Mof9P-1i4iMx2LpR-00p65W; Wed, 20
 Nov 2019 17:08:38 +0100
Subject: Re: [PATCH] staging: vc04: Fix Kconfig indentation
To: Krzysztof Kozlowski <krzk@kernel.org>, linux-kernel@vger.kernel.org
References: <20191120133848.13250-1-krzk@kernel.org>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <fc808b93-92e6-cb31-0a15-8ed6faaae536@gmx.net>
Date: Wed, 20 Nov 2019 17:08:37 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <20191120133848.13250-1-krzk@kernel.org>
Content-Language: en-US
X-Provags-ID: V03:K1:mJp9UTjNGlEn2Z9Lm3PI/i9DsBu8E5pTB5Ml1bLGxLw4BfCwyiS
 dhcR3OZBNgQBR3ZrZt50zbmcEWHU+ic26/yqd/tQWfKf4mWH6dByZ6yOMv6knYJvCrPE890
 MpxiArxCaVWBUuK92eedfZ3swDJX8GVpwfSL2YJ1cvoGoaHFdkWqtN6ATM+GGbIq9vWjv1S
 526Jv8JC6V0Z8zvB7vZMw==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:vw8G8SQOvuw=:DUT5v2eclXHUpOqZ4iBzf4
 /u2biM6bLky+V2Jp3MK04MHdqMvBCNAENqpteQHosqNo6VmY14+UBag/2wYohIlR+A2s2+jEO
 yvyrbuK4jIKOSIbXnTAlSqPG+zPohSoo5Fdl9XEs0uAUR4j3G2o3apzW/TPRcQrsR4enLM3fb
 eK8tLxepDUyM+a1j8i06RMeUMm/VDuS+xetFTmlITjS4itjKJJASXSn+0O0BknJJTybcIkSiP
 O6+mdOIHmvqD3jogPR1Lq2HAFdl0f/7wEuZTIdzkBJ2H7kDo9gst49n/74GhWmJ5qLsgAGxXO
 PfYu2aTMW8ym5uj1vEolb771duiJLGOuP/b+cZ4wuAzKJ+6fH/cwW2XAzalZ5I7iVb6UDMnUG
 vgxk1nKarRsG7OhAJq8t0VX5V5DRYUhZ7AWbVs74YAj1vhufhNp3oJHzPnNKYj4ToMcE+QtV6
 KspU5j1RYBVAx1O3J4z2Yyxv5xUnNS2iq5d8l1Ab9KUHWHn/pFZqRg+aAqAgcQgGWTrGLtnVg
 0hik4dG39IzkAaMFh91Bui76oN6cOkmzQjaYWh9d+wF4xo1xaS/p+7xECUVHPwxk2GcMuland
 aLrut5w+B1uu9gqUZr29M0SSXGXOD0fSSMQrV7fkqRNd2HjOWgJ+cc3pFApwlKLOd5ZdMvj8e
 w6q4v0us1fFUOO9vBmsNGYcMuRJfMe85mK3UoVKy+edfAuB4shXECpl9ebkhRjF8uo7EHKFzQ
 D+SmClymQ7kBLCW5sXFgt9GZG980BuKctZmmmzC1UbOlFmxUklYds5ZBbTz/btgEMHo50bC1/
 hvApTYqOFWQv2QbOOGL9/NKIi660eXA7TXsXAMsapNP0w5kFnHrywfUu4kVbvqVhmxFQarlbg
 wu/fFMyG8L1teQo8cScmK0QWVb4QJkbeIO2VGkpTLHD1vXBLn2uAq3Ac/d4BZHFZRBInOCOek
 eOfhiVzW1ks1Y+SFNCwSJYF/wzOqQHd4uJ0TQyKJKfZ9fBdxGWYoPh/tEFAfrkTAvmK2xsg8G
 0OTm0qCx/NEoDnkdOa12umm0LZ3MvmQp7ifNlEALNL4soV44vTdOqZu04SYD+myc0TPE2Azk8
 BR7RvQL/yzFe+0opD4rrAHP65qR8eHqsnlmxat9YJfq+ikGKUcL2dZ4EBmi5xBj8HO4e9VkqL
 j31KYmDyG0m3rdvuHhceYkuqwck4waUZnIlQUwslLAW1iHCC2Rnrp8CXbQ3LVJo6TuSmFbd7h
 LFJcRCCLynwfOJpNjPSBq10fWCLK45hrLoQXRBiZ+CyWLB+APvNmw/HfcO5g=
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191120_080844_648597_70898DC6 
X-CRM114-Status: UNSURE (   9.62  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.15.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devel@driverdev.osuosl.org, Florian Fainelli <f.fainelli@gmail.com>,
 Scott Branden <sbranden@broadcom.com>, Ray Jui <rjui@broadcom.com>,
 Eric Anholt <eric@anholt.net>, bcm-kernel-feedback-list@broadcom.com,
 linux-rpi-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

Am 20.11.19 um 14:38 schrieb Krzysztof Kozlowski:
> Adjust indentation from spaces to tab (+optional two spaces) as in
> coding style with command like:
> 	$ sed -e 's/^        /\t/' -i */Kconfig
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
Acked-by: Stefan Wahren <wahrenst@gmx.net>

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
