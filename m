Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AB5BA500DE
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 24 Jun 2019 06:57:48 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jFMH1l/FimyVxouU5DGKrW0AI27zH+54NdKLDidYo18=; b=H48L5loV3dcQ/g
	R/MG3zGPzVzlZz1Sdgaegz7e+Ui0Sx8yC5Y0GIEInlNyHpEReSf1KQg4di1SRqu7z2bxMVfKPcYsA
	NTMveaMIBkICuvKfmJCn+irJ8ry5cyAadvMX/YNx0GSP9MOvkhjA9mihCWkwzwh7Og/5PgwGWRjCg
	zS/R7gBM53avE1xSU7H0mSMblKJRbh3YGkiylehq78L14ykMRDf9QCAHmNuAtoz/k9llhwjqDtWND
	JqhEvoG21V7uP1Fij8/noEtiSTM0rbZAfJ9PAECiAZa7lzCDZNXjqtlAAjvRoe6g30EVjyvV0sWRg
	UBL+ptM2BQObKEZyRxNg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hfH32-0008PP-1G; Mon, 24 Jun 2019 04:57:44 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hfH2p-0008Ou-Kz
 for linux-arm-kernel@lists.infradead.org; Mon, 24 Jun 2019 04:57:32 +0000
Received: by mail-pl1-x642.google.com with SMTP id c14so6177916plo.0
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 23 Jun 2019 21:57:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=LzcRJpigxT5MGuTpMW9ctxhMBXABXFzOsOqSmkIMVZs=;
 b=aBXS7Cm1olXy+laKPXiQxa30hxieGkALh5+gO8nLnUI5lyVhz/oD2UTscaPgIbqFbp
 Y7Ffvd1JPoITsXzJqRKAFI9deCx9SlqjJH+MgVXINt0u76Dnpkk3bIR4gVcUYRMeqfpw
 g03GE6AV2zMpAZB+sHIwbfg4fiqUHiOUgjOLrox+NP9N/MiP75LS0ZCpbFopzYWhYRvH
 MfTajMnZITjGnwnXVe0GYFcym5RV7BZQ30gdEnWlwi+CZDHw7YrnieGZifKQ/QjA4z8v
 6x4EfX9eX8E9HjA4hWkNEj+hEZxEXuxc8U4m+mx8ObPMA3OcHmiML+w2tLH6csDuTE25
 qpVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=LzcRJpigxT5MGuTpMW9ctxhMBXABXFzOsOqSmkIMVZs=;
 b=GtA/kEP/A8SJTLko4Y5pUbh8UieEVaMX9RNjRB6+W301TdvkMga21qeD1FMHtrQWe+
 bXHUVHia7JNjlZDnMlKoIUqMEeEFuUfpd2soLAh3+MHIcze+rhioS1W80uEb85TMWR9s
 Lz1WmWrcMEVi77uJfL1SmnOxDgA/3zUJTjKrRNYH554iCoWfffRgCwrIK+IQ92pjj5my
 cYCvUPp3bObv3rRRbfGdIPk5i2UsKyUFwxX4B4ppk04jggRFstgZuf+hlXlTCW34jQce
 Kaiovk724+O1C8AJlgCp4H6Lh19X8X1bgpfKTS/6XPJC9urd1NtJEDm/Xr/3igFEz9SY
 ZhSA==
X-Gm-Message-State: APjAAAUdGjez32qqpWMHkVCxASw0M/kZQoTuEDWNXqf9Vc7POUtnYyAf
 dabVP90PEojRSNrhTjAqbtT75g==
X-Google-Smtp-Source: APXvYqwpkNtle9sTLmOxKKkYez6T2CQpCkhZX9e/+Shu8srXtG6COfcrFldWGtjRJbLpIz5bAo1G8g==
X-Received: by 2002:a17:902:e287:: with SMTP id
 cf7mr54710956plb.32.1561352249158; 
 Sun, 23 Jun 2019 21:57:29 -0700 (PDT)
Received: from localhost ([122.172.211.128])
 by smtp.gmail.com with ESMTPSA id q4sm10420766pjq.27.2019.06.23.21.57.27
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Sun, 23 Jun 2019 21:57:27 -0700 (PDT)
Date: Mon, 24 Jun 2019 10:27:25 +0530
From: Viresh Kumar <viresh.kumar@linaro.org>
To: =?utf-8?B?UGF3ZcWC?= Chmiel <pawel.mikolaj.chmiel@gmail.com>
Subject: Re: [RESEND,v2] cpufreq: s5pv210: Don't flood kernel log after
 cpufreq change
Message-ID: <20190624045725.mckcpb5kvkug33p6@vireshk-i7>
References: <20190621101043.10549-1-pawel.mikolaj.chmiel@gmail.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190621101043.10549-1-pawel.mikolaj.chmiel@gmail.com>
User-Agent: NeoMutt/20180716-391-311a52
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190623_215731_698335_5511372A 
X-CRM114-Status: UNSURE (   9.48  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: linux-samsung-soc@vger.kernel.org, linux-pm@vger.kernel.org,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, krzk@kernel.org,
 kgene@kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjEtMDYtMTksIDEyOjEwLCBQYXdlxYIgQ2htaWVsIHdyb3RlOgo+IFRoaXMgY29tbWl0IHJl
cGxhY2VzIHByaW50ayB3aXRoIHByX2RlYnVnLCBzbyB3ZSBkb24ndCBmbG9vZCBrZXJuZWwgbG9n
Lgo+IAo+IFNpZ25lZC1vZmYtYnk6IFBhd2XFgiBDaG1pZWwgPHBhd2VsLm1pa29sYWouY2htaWVs
QGdtYWlsLmNvbT4KPiBBY2tlZC1ieTogS3J6eXN6dG9mIEtvemxvd3NraSA8a3J6a0BrZXJuZWwu
b3JnPgo+IC0tLQo+IENoYW5nZXMgZnJvbSB2MToKPiAgIC0gQWRkZWQgQWNrZWQtYnkKPiAtLS0K
PiAgZHJpdmVycy9jcHVmcmVxL3M1cHYyMTAtY3B1ZnJlcS5jIHwgMiArLQo+ICAxIGZpbGUgY2hh
bmdlZCwgMSBpbnNlcnRpb24oKyksIDEgZGVsZXRpb24oLSkKCkFwcGxpZWQuIFRoYW5rcy4KCi0t
IAp2aXJlc2gKCl9fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
CmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5m
cmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xp
bnV4LWFybS1rZXJuZWwK
