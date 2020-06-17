Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CB2A31FD7A6
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 17 Jun 2020 23:40:33 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=dFISns1ksvbwKnAyZbSTu4kjTat33r9YW28PxmJryqE=; b=BrI8FJivFd8bCZ3ROo1g/DDNOG
	NPbivdz5jYuD8d/jU0mL5ComLwFI4/mhy75E/heI7TXEDpsvEVRPKIVi3NYn3vt5nf9+QNeK2uuBO
	rMua1y234pZCHvy7/fKkW8DYL4c1aLUIv0vllzFXJj9+HmMDL734KaH08+KgM5PURe6jhH0duvVrg
	C+SZddEB40VXxru8VIid6xJ3GY9n7dkQ7oxH6YOqQEZcKXqR0tdxATivyryifQCPkf5+z6TOx/VEq
	RbeAdPa4mw/yZ09TCwmEwPNGtA+5FLF/8Kkl35A0rX21gG6RCJ0vXqkCKJ60ESPmMrNAVQW/iz9hg
	l8Oj6kxA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlfnE-00045e-V7; Wed, 17 Jun 2020 21:40:24 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlfmi-00042S-7K
 for linux-arm-kernel@lists.infradead.org; Wed, 17 Jun 2020 21:39:53 +0000
Received: by mail-wr1-x444.google.com with SMTP id c3so3899539wru.12
 for <linux-arm-kernel@lists.infradead.org>;
 Wed, 17 Jun 2020 14:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=JXqxnQrzDx0KFOUE9cZQZWZFRg6fINWzTehW9g1ojWQ=;
 b=QD1YVpX8mfIF+n1RkMXenprtAVibl19Y3u8qshEvP63c0Q0Si2Zm8nqFlAL8SMHIl9
 zT83vgcwmIOrVU0xDCtAg6pWEEMGZ6fdKZgoWUJVwID6UL/u/SjKiQmcXzvlW8cCQcD9
 KBaEZb9gVPJypzuqwEbOLryGLaERUnXNsJg09AxjrPPwSOCj9NEqzFrkL1qwHxFpxkdg
 Ec5I6ht2mDiAW+q2JGbMvI7gQMS9yi3+3kCH/e4o/uzFeMi1vY4NSeQMwyHvKQrKovhE
 rtdhsGquvXqXHXrxjIDs98MrKqjOj+TTlegkYinZilwGLRPzLg5C71PqSKNRrUQwKJOV
 dh4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=JXqxnQrzDx0KFOUE9cZQZWZFRg6fINWzTehW9g1ojWQ=;
 b=FrQEsIRhvoRDOdUcexhYin+QIoGRF+sXxSBXzb7QfPwxq1ZMmndpVeKthzXXLWfK9o
 9Qp0j0H7Gds51k0ysFW/UiAx/wqq1L/u/8QJXb7/r8deGm7TB0RCDvKUzn0oDzoMsVo1
 t1dyiESACjI+FKbt6ztg5U7I1zSFOpjx+VDoyrvF06ClXERGCPIhQuMciwmWOwnESTEY
 WMTFMp2q0eiqJTm5b0BApS21QnVeD8tk38tNKlZVFq6brNGDwVZowDLOw7lLK2X56f4A
 SJZNRr9c/H7PgFAsQiB03NlJnIDTb64RLSmbMFe840+ClRzEvwlxZl10m/jHGNhY7q4D
 CocA==
X-Gm-Message-State: AOAM533mcSJ6UFH36EZRlkF50RO18TxRcvOPpuyC/n/6xqgBrKhoP5SK
 9vr43Sl0qIzGKo9qEGLoh6oypCtx
X-Google-Smtp-Source: ABdhPJzM8txse9pxmwNfTVh2Ajki4psa6Psii2cLfEKUlqxGEvuBBO/z+mm541KTkFWnZOwt7KPbrQ==
X-Received: by 2002:a5d:6944:: with SMTP id r4mr1189855wrw.169.1592429990649; 
 Wed, 17 Jun 2020 14:39:50 -0700 (PDT)
Received: from [192.168.1.3] (ip68-111-84-250.oc.oc.cox.net. [68.111.84.250])
 by smtp.gmail.com with ESMTPSA id
 r4sm970409wro.32.2020.06.17.14.39.47
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 17 Jun 2020 14:39:49 -0700 (PDT)
Subject: Re: [PATCH 4/8] mips: bmips: add BCM6358 clock definitions
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 mturquette@baylibre.com, sboyd@kernel.org, f.fainelli@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, robh+dt@kernel.org,
 julia.lawall@lip6.fr, jonas.gorski@gmail.com, lkp@intel.com,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20200615090231.2932696-1-noltari@gmail.com>
 <20200615090231.2932696-5-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <6cfc1883-dfc3-d1b3-6125-45bbc41c8a56@gmail.com>
Date: Wed, 17 Jun 2020 14:39:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200615090231.2932696-5-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200617_143952_260725_CF07C85E 
X-CRM114-Status: UNSURE (   7.51  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
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
IEFkZCBoZWFkZXIgd2l0aCBCQ002MzU4IGRlZmluaXRpb25zIGluIG9yZGVyIHRvIGJlIGFibGUg
dG8gaW5jbHVkZSBpdCBmcm9tCj4gZGV2aWNlIHRyZWUgZmlsZXMuCj4gCj4gU2lnbmVkLW9mZi1i
eTogw4FsdmFybyBGZXJuw6FuZGV6IFJvamFzIDxub2x0YXJpQGdtYWlsLmNvbT4KCkFja2VkLWJ5
OiBGbG9yaWFuIEZhaW5lbGxpIDxmLmZhaW5lbGxpQGdtYWlsLmNvbT4KLS0gCkZsb3JpYW4KCl9f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fCmxpbnV4LWFybS1r
ZXJuZWwgbWFpbGluZyBsaXN0CmxpbnV4LWFybS1rZXJuZWxAbGlzdHMuaW5mcmFkZWFkLm9yZwpo
dHRwOi8vbGlzdHMuaW5mcmFkZWFkLm9yZy9tYWlsbWFuL2xpc3RpbmZvL2xpbnV4LWFybS1rZXJu
ZWwK
