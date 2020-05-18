Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A258F1D8902
	for <lists+linux-arm-kernel@lfdr.de>; Mon, 18 May 2020 22:18:54 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=2CJrMWAQbMSp5AuWc6ax7mJU//UcmeeZPh5KWmmd9Ik=; b=RJGbk1eoiLs0wu
	0shjKCSibIhQvGjPmJI3m0DuYGoqtzhZfEZPp0/cPuXFV5hpPcLEThOhw5ihBDFABbMVP80Gh+MPq
	JEWyfOxcyaOcDZWFBWd84nqkb/zyQ0cFmNlTF2YurVzDgyJ97ZUA4EkUJRnNPHfk3wIK49JYAKtDm
	Zp1c1XelRfDQnd+fayjp72aDMHzuVngEPXEpTcSWTtvLG7UUHc1dkdDncwxBDt0mEFW0ae/ZnXhdp
	ulNtwOgD+USDbqsNsd25waWjArm0zL63gSbZDYRbl50mV90jpiHzqFJTfkM2Wi3gNPcsv6WSmOA+9
	rpi8kpPIm3mnfp3CfKdQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jamDm-0006Bx-FI; Mon, 18 May 2020 20:18:46 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jamDZ-0006Ad-30
 for linux-arm-kernel@lists.infradead.org; Mon, 18 May 2020 20:18:36 +0000
Received: by mail-wr1-x442.google.com with SMTP id e16so13329392wra.7
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 18 May 2020 13:18:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=BuJAIlJzNVfUnKFpYlKJrQaksovEb6r2MOQ70C3Y5sE=;
 b=SxAWC9wD97Nx9RF3x3Gt/iZfKa8M2cx51v1EjKYupLeGpf+OXQcl28YEfu07NNYBzp
 oG+fZxxrewBemj4QfFHPCIkMV+hJAXiaAzGtFMWoKqaKX9APTvHFWnpqBpvZStJP6MY5
 ZJL49q+YvgR1TsQW6DuEjc0vHci857/8g7zyBbXevlDpKtC16cdZUMFYwaSBtu/Azadr
 hcWfZEHCdEnqumpagVLp+S3vV4xtpbduKy+4NNZEuG21ZOK5ZrWQACre05Eqq834JNCW
 Tr0rVO6giGivX1D6FKN3hG2Y2HP0AELLOVuUdTe7C7HDFMMswLp//vZnCo7l4qyKIsq0
 HEGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=BuJAIlJzNVfUnKFpYlKJrQaksovEb6r2MOQ70C3Y5sE=;
 b=Xt/KhO9LrkjxHQ+vdG4VP4Qy8pj4F+v0hXBx2yTcjOKMqZrrCht4fMZ4ufuqJ34PPD
 3ToAHiWz5L8XgHUc2vN0JuE26QM6BOO8MBdj4wXZGfT5bccuS0nfElWzXjb7oKGw6Ob+
 TUdo3fBhwgIiBQoYoJhSpeiW4vnZLJNnBTU4nbJJ7wXjC2TPlm5Y1OS2h89FqK+fLfRP
 80BQF7NUjNqzOgBbMSr+M91/eRGwE58jw75wkiYPLpyoj8Mp4AuXsbSNedEyIdueHn6k
 QRjL7hzSwwkQu6ZQufh0HjD/LdvZogVLAb2WvpUATJyoQ9B2kEjy7wGKb01wtfxoL3aD
 B5wg==
X-Gm-Message-State: AOAM531USosUpgwXTp1yHposIp7EqqAjS6NnkUEOnNu5ZkBCj57kf5eH
 AzLBeWekIXjwAMsmdngLGHpxwA==
X-Google-Smtp-Source: ABdhPJwPiPMglSYT2/xaOY59iHe2nTbksNb6WmRUz9mJuUv5IbPqRFkca7BsAXDI/I3ojYQVTFNCww==
X-Received: by 2002:adf:806e:: with SMTP id 101mr21994991wrk.225.1589833107923; 
 Mon, 18 May 2020 13:18:27 -0700 (PDT)
Received: from ?IPv6:2a01:e34:ed2f:f020:9e7:3ac5:a930:2cd8?
 ([2a01:e34:ed2f:f020:9e7:3ac5:a930:2cd8])
 by smtp.googlemail.com with ESMTPSA id z11sm17107463wrr.32.2020.05.18.13.18.26
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Mon, 18 May 2020 13:18:27 -0700 (PDT)
Subject: Re: [PATCH v7 5/6] clocksource: Add Low Power STM32 timers driver
To: Benjamin Gaignard <benjamin.gaignard@st.com>, fabrice.gasnier@st.com,
 lee.jones@linaro.org, robh+dt@kernel.org, mark.rutland@arm.com,
 mcoquelin.stm32@gmail.com, alexandre.torgue@st.com, tglx@linutronix.de
References: <20200420121620.2099-1-benjamin.gaignard@st.com>
 <20200420121620.2099-6-benjamin.gaignard@st.com>
From: Daniel Lezcano <daniel.lezcano@linaro.org>
Message-ID: <9f737934-d92c-9ddf-f6fb-3ee64057ea18@linaro.org>
Date: Mon, 18 May 2020 22:18:26 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200420121620.2099-6-benjamin.gaignard@st.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200518_131833_130256_A0F0DD02 
X-CRM114-Status: GOOD (  11.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 Pascal Paillet <p.paillet@st.com>,
 Benjamin Gaignard <benjamin.gaignard@linaro.org>,
 linux-stm32@st-md-mailman.stormreply.com, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

T24gMjAvMDQvMjAyMCAxNDoxNiwgQmVuamFtaW4gR2FpZ25hcmQgd3JvdGU6Cj4gRnJvbTogQmVu
amFtaW4gR2FpZ25hcmQgPGJlbmphbWluLmdhaWduYXJkQGxpbmFyby5vcmc+Cj4gCj4gSW1wbGVt
ZW50IGNsb2NrIGV2ZW50IGRyaXZlciB1c2luZyBsb3cgcG93ZXIgU1RNMzIgdGltZXJzLgo+IExv
dyBwb3dlciB0aW1lciBjb3VudGVycyBydW5uaW5nIGV2ZW4gd2hlbiBDUFVzIGFyZSBzdG9wcGVk
Lgo+IEl0IGNvdWxkIGJlIHVzZWQgYXMgY2xvY2sgZXZlbnQgYnJvYWRjYXN0ZXIgdG8gd2FrZSB1
cCBDUFVzIGJ1dCBub3QgbGlrZQo+IGEgY2xvY2tzb3VyY2UgYmVjYXVzZSBlYWNoIGl0IHJpc2Ug
YW4gaW50ZXJydXB0IHRoZSBjb3VudGVyIHJlc3RhcnQgZnJvbSAwLgo+IAo+IExvdyBwb3dlciB0
aW1lcnMgaGF2ZSBhIDE2IGJpdHMgY291bnRlciBhbmQgYSBwcmVzY2FsZXIgd2hpY2ggYWxsb3cg
dG8KPiBkaXZpZGUgdGhlIGNsb2NrIHBlciBwb3dlciBvZiAyIHRvIHVwIDEyOCB0byB0YXJnZXQg
YSAzMktIeiByYXRlLgo+IAo+IFNpZ25lZC1vZmYtYnk6IEJlbmphbWluIEdhaWduYXJkIDxiZW5q
YW1pbi5nYWlnbmFyZEBsaW5hcm8ub3JnPgo+IFNpZ25lZC1vZmYtYnk6IFBhc2NhbCBQYWlsbGV0
IDxwLnBhaWxsZXRAc3QuY29tPgoKQWNrZWQtYnk6IERhbmllbCBMZXpjYW5vIDxkYW5pZWwubGV6
Y2Fub0BsaW5hcm8ub3JnPgoKWyAuLi4gXQoKLS0gCjxodHRwOi8vd3d3LmxpbmFyby5vcmcvPiBM
aW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQVJNIFNvQ3MKCkZvbGxvdyBM
aW5hcm86ICA8aHR0cDovL3d3dy5mYWNlYm9vay5jb20vcGFnZXMvTGluYXJvPiBGYWNlYm9vayB8
CjxodHRwOi8vdHdpdHRlci5jb20vIyEvbGluYXJvb3JnPiBUd2l0dGVyIHwKPGh0dHA6Ly93d3cu
bGluYXJvLm9yZy9saW5hcm8tYmxvZy8+IEJsb2cKCl9fX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1rZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4
LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpodHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9y
Zy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJuZWwK
