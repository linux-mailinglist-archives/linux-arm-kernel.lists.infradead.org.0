Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 74D8F1FD794
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:39:38 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=0gdsB9Sm9gpvXNhZLZxOz5KIlo2MA6ogiKAjZ48napU=; b=bhYSQV3iewqN6rq524bEl5TSvJ
	b4IoLH/Q+IEcaiHdR3IxZ9JcsIF/q6TfF7Ce7f8sud73qxELNbRvNovyshB7lZaD6/UhE0JUYDglB
	gSfKoETT9ZroTa+t9bgtKhumcLCUHp+BID0FW3eSynSpiA9JkEKnOCuFhNXcwy76RaH1MTW4L7VRF
	tE8d6Yd5j30KNMeowBHqCnkp3V60hLcYsO00Wfmn2XPObYsMII/KwOe4YkAoIfEGU0hrklb9udxX9
	eS6heKF7RRrCVh8ZnyND8p2W44gnLX7hHoAP5SbhUmDEnxwHf4+RT/V598WGrOoPyHhFS6tM8iBTu
	wzWjAefQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfmN-0003bM-Oi; Wed, 17 Jun 2020 21:39:31 +0000
Received: from mail-pj1-x1044.google.com ([2607:f8b0:4864:20::1044])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfmC-0003al-0r
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 21:39:21 +0000
Received: by mail-pj1-x1044.google.com with SMTP id jz3so1599841pjb.0
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 14:39:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=YpnqnZExMs/Z6HNOkWMebiRuhctIId69Ekks444x5Ec=;
 b=aF/8h7u7Celm2ERr+dAkejqjfgIWrYnCJYIFziOQ4Cr8pg3z9las6lyRy8hFjY4JvV
 JZ5sOQGWcB8hUk4eNPOlv+27S8Qu+8rT/tRV2twMIxZBAq8ezoBTtZGvcgVPfXw2Q8pH
 uzIFDvqlhdwh3AyDd4kcEtTHyBo2OvBse16aogRl2GojTKAoFspvfy6SAgmZdeXwo7Iy
 FNp2ESsA4bioVq62WafTueo1vSqB23ybviV8Q1H/wcEqzOj8Vv0cSgAGFGetaihPc3hS
 75d6kxz6RP159JP/lOqBF32FIu8xBec8SFOE010Y+A+WCHKqtdMvZo61b8T6BLb01vyy
 ivWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=YpnqnZExMs/Z6HNOkWMebiRuhctIId69Ekks444x5Ec=;
 b=J2K8vcYx7WW3UCR/hcxFXSzf8ZdU0yyZihrQzTUqyJ/ETDgcITgS4VUuxtI2Vqa2yy
 9VjzV49FDz+QO1Tm9eMdMqWOY3rarJySIa/C2SFcKh95CFDuNOtflNhJfYIxEL3aSGs9
 /cVZ1ZPLoZjGURB38soTIZmEEFgg5D+XkqETtmaQn1Z/Sm6tf1PvNdS8uhuc/mojr244
 HEoSG4gNt5j+g8LyRUPA94dIwdQH87Yg3DBVYmdoLaLqSKPxflRDCctkeqXdcCN1ZDvY
 d/5HcDhEREWlQEzoTecMw6/p9J4PvQq7dlBJLiZImo3gEVycmu6n1VTYoMNrhJq1anM+
 s7HQ==
X-Gm-Message-State: AOAM532XQ6HKUNUYmd9V86nYS7n59sVjCsn6CnoX7sU+hP3TdMLNtRdG
 VJPL/mgme88gQy+QnDefGYw=
X-Google-Smtp-Source: ABdhPJzZPwfKezxO/XZUXIZYPSi00Xz40VGOHk2PaRDuvE/FzYdjsl3RdOdmWUdzcNV09TtZRDZSog==
X-Received: by 2002:a17:90a:f414:: with SMTP id
 ch20mr947017pjb.97.1592429959478; 
 Wed, 17 Jun 2020 14:39:19 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id i7sm663789pgr.86.2020.06.17.14.39.17
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 14:39:18 -0700 (PDT)
Subject: Re: [PATCH 2/8] mips: bmips: add BCM6318 clock definitions
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20200615090231.2932696-1-noltari@gmail.com>
 <20200615090231.2932696-3-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <6e2372d4-7404-c8a0-b92c-414166e89f78@gmail.com>
Date: Wed, 17 Jun 2020 14:39:17 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200615090231.2932696-3-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_143920_060874_09EF7A0F 
X-CRM114-Status: UNSURE (   7.55  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:1044 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

CgpPbiA2LzE1LzIwMjAgMjowMiBBTSwgw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIHdyb3RlOgo+
IEFkZCBoZWFkZXIgd2l0aCBCQ002MzE4IGRlZmluaXRpb25zIGluIG9yZGVyIHRvIGJlIGFibGUg
dG8gaW5jbHVkZSBpdCBmcm9tCj4gZGV2aWNlIHRyZWUgZmlsZXMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KCkFja2VkLWJ5
OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0gCkZsb3JpYW4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
