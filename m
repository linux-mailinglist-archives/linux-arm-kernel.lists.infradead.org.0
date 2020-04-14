Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 232E61A84D9
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 14 Apr 2020 18:28:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=FjPmrvGJg3rDdHI0oFEZcbLiTArUE0GbZvKVdHh7S/c=; b=G75Kz/ep8g7IL+
	iRjTqdWbRd0vzz7yVCx4qs2/a89CbeaXrqkjgPyGWpxEcmuE0wZhrkJdae69rnFIhlpKVrrxCltqw
	719lC3H7+w/vBJXUvG8hcJHVaYTGEomEYiEzg6w4N29Ug/Z8MzXKVmxcL9KRsm3rpGQ2J7DOr03ib
	ITYPg9DVUulHnJqB41AcwglbugJXZaUkMXOM2+SejT2Lh2l7XvXLgSCt+9Fg06OKh21ttS2ZT0BYp
	Vn9G7yB8K0IJqsZXNSrihuMpPkD2F5C8fNQxVlNyIuksRiCa3QPIBQK9BGa5ockpwRVOKB+J49HKI
	80JkmbdnZzk5eicuUyYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jOOPk-0000Uv-3R; Tue, 14 Apr 2020 16:27:56 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jOOPb-0000UA-B5
 for linux-arm-kernel@lists.infradead.org; Tue, 14 Apr 2020 16:27:48 +0000
Received: by mail-lf1-x142.google.com with SMTP id 198so226988lfo.7
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 14 Apr 2020 09:27:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=wItdl1kg1ho/UCt0W/llhzqoO/4ewYoe347wz3vvN28=;
 b=JU9OD2GmTJxJzR7SI4BSza5QS7a+nLF2rIyiM0O4JOYm9/yfjrce7nyvTUJAljDxk6
 GRc9hWnVaw+cOR+LpQ+1qk9iB19WdQ3H6n0OVUvOGIkqqB3Ym0e6RVZ+gLDmvuCk/tBU
 v62qrV8mqw/y2a0RuWQy80IS0Sb7KXoXQ3UYICIqe9e+dKFaHLsMzwAO2sToe/0CQzmk
 Nq9utwFgN5ecpsTm4jVcTNmd/1/gsXgpw2lXmK7PLAgpggIZqXZgv7GnU5Uv+1QJO905
 S1HWQ9CdgXvR2h36WKVxPz0P6alNB2fk3VotkD5dnUTdp5PxDNOBx/DrlpxlhJi+04Ha
 ezHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=wItdl1kg1ho/UCt0W/llhzqoO/4ewYoe347wz3vvN28=;
 b=NjHjDOG/A0hsF4HgL1GCKbHRAEdNcS6hqDpUKovwsyo7FxVBV7uE/N6rqzMJ7jJ48U
 x4h4TQPZdOwT7YtX3yAMr1fpgJHiID5hGnFLmxLkDsAP7kenod+eVzCtHW47JK3vqjmz
 toGJJDGApoBs1AnOs4hEFFBNRf7+u9sPptCcSK5VsUXgCdjRsCFMoWw0fWSkB7z5du3m
 aFmLOThYACqpvO3cZqCg4RLjaFrBjrYuEQZN5R2eHF/9CvyYTN76AWlSlHc0FEcAyjw8
 WOX76anJiEoPruW7sns85xZDw8KjsqxCQHUKddcHf5ngRd2A0OJXvTykEQefSgVd9Kfn
 E1KA==
X-Gm-Message-State: AGi0Pubg5ExCnzdQ+Ix99hDhHIZOqHGhsyQe9tWXGZerKbr9g1OC2UPx
 nxOe8HcKHAZsVODOs2fmgCmLBFBY
X-Google-Smtp-Source: APiQypLfq8BURObkeqYvmT3aWY78Mdp4f1m77k1SBUPP6KkCEAuVyA/nceq/cBM66WxaiSQA/ECeuQ==
X-Received: by 2002:a19:760a:: with SMTP id c10mr394527lff.126.1586881665309; 
 Tue, 14 Apr 2020 09:27:45 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id x29sm10673621lfn.64.2020.04.14.09.27.44
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Apr 2020 09:27:44 -0700 (PDT)
Subject: Re: [PATCH v6 10/14] memory: tegra: Add EMC scaling sequence code for
 Tegra210
To: Thierry Reding <thierry.reding@gmail.com>
References: <20200409175238.3586487-1-thierry.reding@gmail.com>
 <20200409175238.3586487-11-thierry.reding@gmail.com>
 <682c661d-ea3a-7b9a-42f0-d5473b969aa2@gmail.com>
 <20200414154526.GP3593749@ulmo>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <e050baee-89cb-dba1-544e-77b1662ac6b7@gmail.com>
Date: Tue, 14 Apr 2020 19:27:43 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.7.0
MIME-Version: 1.0
In-Reply-To: <20200414154526.GP3593749@ulmo>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200414_092747_379687_71E4FAB9 
X-CRM114-Status: GOOD (  12.97  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: devicetree@vger.kernel.org, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>, Jon Hunter <jonathanh@nvidia.com>,
 Rob Herring <robh+dt@kernel.org>, Joseph Lo <josephl@nvidia.com>,
 linux-tegra@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTQuMDQuMjAyMCAxODo0NSwgVGhpZXJyeSBSZWRpbmcg0L/QuNGI0LXRgjoKLi4uCj4+IFdoYXQg
YWJvdXQgdG8gdHJ5IHRvIHJlcGxhY2UgdGhpcyBtYXNzaXZlIGVneXB0aWFuIGNvbnN0cnVjdGlv
biB3aXRoIGEKPj4gc2luZ2xlICJ1MzIgdmFsOyIgPwo+IAo+IEkgYWN0dWFsbHkgdHJpZWQgdGhh
dCBhZnRlciBjb25kZW5zaW5nIHdoYXQgdGhpcyB1c2VkIHRvIGxvb2sgbGlrZSBpbnRvCj4gdGhl
IGFib3ZlLiBUaGUgcmVzdWx0IHdhcyBhIGh1Z2UgZmFpbHVyZSBiZWNhdXNlIHNvbWUgb2YgdGhl
c2UgdGVtcG9yYXJ5Cj4gdmFsdWVzIGVuZCB1cCBiZWluZyByZXVzZWQsIHNvIEkgZW5kZWQgdXAg
d3JpdGluZyBib2d1cyB2YWx1ZXMgaW50byBzb21lCj4gb2YgdGhlc2UgcmVnaXN0ZXJzLgoKSXQg
c2hvdWxkIGJlIGZpbmUgdG8ga2VlcCB0aG9zZSB2YXJpYWJsZXMgdGhhdCBhcmUgZ2V0dGluZyBy
ZS11c2VkLiBJdApsb29rcyBsaWtlIHRoZXJlIGFyZSBtdWNoIG1vcmUgdmFyaWFibGVzIHRoYXQg
YXJlIG5ldmVyIHJlLXVzZWQsIGFuZAp0aHVzLCB0aGV5IGNvdWxkIGJlIHJlcGxhY2VkLgoKX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtl
cm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0
dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5l
bAo=
