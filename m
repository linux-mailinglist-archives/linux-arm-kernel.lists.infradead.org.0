Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CCBC1FD7AF
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:41:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=OutKXYAohHnYwBTCUm7A5SNLmH7cPA1ynlBR+6O+cgI=; b=bLx90faD1N6QfiNqMLZ+AHj+XM
	dIXSsZvRZ8ni+q/OSP3EQMs39NcJrnOgwjyGzWvihbjxpFeaAXjXC3cLfd5o83TOQO0LxuMEmT236
	sGlejLLVeWX8lIBReqmLXbc0rIF8rY9kHXNjtIXON8NlZuStp4MRq4N1CrOWAo1FDlInmcAeiIsAq
	4s45bzZnCZn3KSVrUg+j3zXHTnywFfCLz3mzUa6fhoHwOCc3q7QlVyhOmbEaHpNGTNdEMrmeyIEnB
	oEOSeI8eW24LU/NGEw45bNfJ6DUR3JBw2CvRG6BOpMX4wwj3qfiRWH/IVNGhy3AskKYUctG/LXrkg
	HOI3Mrvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfnv-00077u-Va; Wed, 17 Jun 2020 21:41:07 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfnB-0006jS-WD
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 21:40:26 +0000
Received: by mail-wr1-x442.google.com with SMTP id c3so3900528wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 14:40:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=tdxAnfgHfsRu25mT+OxtZg51u9F1VhBEhhhiBFNKCsk=;
 b=RJQ40VwTsQGrYwjKSxrMtXd3nJLKxujv+qp3fj9x9EqU1Yfc/TMcA3NS6KB+AWMdoJ
 yuaobs7Po8gIpaqFe5yPuzYmBMgwwvKwKaWNkN1g9IIBWu69fVOJh4crFteBZWqNzUKy
 YUqsNqW1L69Ep72+D7Gk9sC2szR8rRSxXprkr6xzzjI7gYdrJzpj7U0kTrZhXoWC0M95
 oYkF3xsd49gsTmw142pF8+lAhzoqP42YZ80dwD7yB7UWNLHo1aIE6naHTyAB7OogfXgl
 WFJjz/UPfUMzE9ASgR4d3GrjGkAhQyxV2Z2mTwo3Ip0thsE7N1mSwMtPp0S/xLdGuXB/
 GXlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=tdxAnfgHfsRu25mT+OxtZg51u9F1VhBEhhhiBFNKCsk=;
 b=HikNPT+fxQhc/RxMKcMhuK/oIXBguO0blJHTOzJbpRV4dh5mZZRASFON5bnCGk3Cot
 +eXEm+xHdi1UkfSMbYJcZsUb1RZmoHyfOLLIYbAMa3R7w36Ygp8Ln9StaVJD//tkm3/j
 aHbUF9cskfrQlRgDvLfVsBc6c8QOsQyNsvHEaqLebpVhDR7LvhL9OqGxzUQ9+OToNrKu
 Bxp1Wi9QsxIZCQ4O/oAIXdner/LZXxTmju2QFPpCyMdm50uJxSFnnekldGZvfgU/97qa
 fzib4/Ijkfo10jIMsWb8mLJNiTP6zrCzD6l2b1Kf9HLpO2AhJ+7t7c/7LjVKtzUI99OS
 waZQ==
X-Gm-Message-State: AOAM532F6NDti7aC6DHPyuggUmY16KXVhGjgGoKtTPjpM5J+eCpS0OC2
 R6firqL8CnrrHkz4ITg9cMc=
X-Google-Smtp-Source: ABdhPJzHdexF9zhmK8KE6PQXWc21U/TZcL6JBgmmEvG9RPxaIknHPV9quDQmTaTTVSDjxAm4Azza5A==
X-Received: by 2002:a5d:4d89:: with SMTP id b9mr1328829wru.210.1592430020210; 
 Wed, 17 Jun 2020 14:40:20 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 f11sm981816wrj.2.2020.06.17.14.40.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 14:40:19 -0700 (PDT)
Subject: Re: [PATCH 6/8] mips: bmips: add BCM6368 clock definitions
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20200615090231.2932696-1-noltari@gmail.com>
 <20200615090231.2932696-7-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <2fb17140-fb61-ffaa-91cd-e32449e3ef08@gmail.com>
Date: Wed, 17 Jun 2020 14:40:15 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200615090231.2932696-7-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_144023_498167_7C953D74 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
IEFkZCBoZWFkZXIgd2l0aCBCQ002MzY4IGRlZmluaXRpb25zIGluIG9yZGVyIHRvIGJlIGFibGUg
dG8gaW5jbHVkZSBpdCBmcm9tCj4gZGV2aWNlIHRyZWUgZmlsZXMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KCkFja2VkLWJ5
OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0gCkZsb3JpYW4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
