Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AE38A1F4B72
	for <lists+linux-arm-kernel@lfdr.de>; Wed, 10 Jun 2020 04:27:49 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Cc:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=gV5tn4BNIOGrsceATE4FqLh8Bul55CXf5db+zb8cl4U=; b=W63PSswBMOVZGHzPWZDxuoAirg
	nNzMC8srhIeiLT6SSBr639BeSCBljH3n7x4eK0xkEpVtvGGrKGTL/1nWQILJWKAWg6dtK0+dRM3uw
	OqwMzHhVMYNYR5LiXrfXRB8GLT6kCw17+dBDKiMyfK51m4QdjneC3x3ZQxaYn0QsdbwAHF2/mGdPE
	dfJEsHspfFIz9UQXwFu5sfd4PBWLX7xPRdgf8zRWasjR62avTbryqhlcYvuQsx/Lu9U8ikpgKQUcc
	nq0HKSyG5XePrJW7GxDKr4axEopQJ5+l25Ndu4AyG2IyJEmnet4Zi//v9pBXiAcpKjr8CQqNBB4hO
	xSl5co7Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jiqSw-0004pw-7a; Wed, 10 Jun 2020 02:27:46 +0000
Received: from mail-pf1-x442.google.com ([2607:f8b0:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jiqSe-0004lZ-Ed
 for linux-arm-kernel@lists.infradead.org; Wed, 10 Jun 2020 02:27:29 +0000
Received: by mail-pf1-x442.google.com with SMTP id 23so417939pfw.10
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 09 Jun 2020 19:27:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=6MDJxP19WPGYDK5RYXnflZJ1FBWzKzFWdzGVhyzU/Lk=;
 b=nKFql9qoJJ412TjcOwdtBKo0XP/Azm/+cAxSaHUsjFC8TwgVwHsidhjVhxcY4Hs2H6
 CHRGsi4ithzJfjLF+fZiMaH+lw6uajss6PiAffjbD00GlbO0x0YNca+Ca/Qy32q8D62K
 UEtE+EP4vo6+kyT3BQo1zVL0kftNb64uA4UkzzOI4fmlO7mhvJmGKMM05XpyMeaCduZA
 MFMzS0/SxXjC+wZuNMpxZicfF5R0JsGhCHBCPb/sshBWzS3XSgh2ZduhuCaQeSQROXXj
 c5jC/EGu0iHa7Mq6RkWLG9nr+Orl4ZJlJo5nbZDw8hKL0tLxJ/ko5tVDxiJUusqIc9BP
 SxWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=6MDJxP19WPGYDK5RYXnflZJ1FBWzKzFWdzGVhyzU/Lk=;
 b=dkJxfabCCp0TFWbdT5hoBCaocP+IPBHcWEV02bPTzUkGPeYxXo5aV+G1YNEt7K8Y6/
 FzGowq472FKwe9iTEFkY++5yWMApyZj3EefJs1B+WveL9ajLhKHzdOIfMNUGWHx6BtQL
 V6w8gDnLDBgSsoIMQ2oiP98DUo+nHuNnpZWblUGHZQK+IPz6EXpVMd7dAOu55ZC6UmuT
 ENkYzoPBrf/b+0L7hfFn3B4F1Pf1glo4ET7bgnxgl5TWMo3++M58KDazd01mYKyjt2IO
 Yrg0X67Ao3Nxy+gpQafm0o7vESSfTlHywMyP8wUCt2dP6WvghGa4thYaaaWwxjPWmT8x
 KH6A==
X-Gm-Message-State: AOAM531F/TdVneGt0qh6R8+TkoyDV9A4f+VMn+xWbbvwY7TWYzpkoDok
 kQqK5NYWIzqvhqlSYpTPPl2x/DLP
X-Google-Smtp-Source: ABdhPJxUUZnClIL//Wqvm0VbUuZ1R/c0nZOIjemZg+Eez8yLqIdHcB5Yjx4SnIoePiWQU9shTrC/IQ==
X-Received: by 2002:a62:5ac5:: with SMTP id o188mr715392pfb.37.1591756047148; 
 Tue, 09 Jun 2020 19:27:27 -0700 (PDT)
Received: from [10.230.188.43] ([192.19.223.252])
 by smtp.gmail.com with ESMTPSA id j1sm3625949pjv.21.2020.06.09.19.27.24
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 09 Jun 2020 19:27:26 -0700 (PDT)
Subject: Re: [PATCH 4/4] mips: bmips: dts: add BCM6362 power domain support
To: =?UTF-8?Q?=c3=81lvaro_Fern=c3=a1ndez_Rojas?= <noltari@gmail.com>,
 hauke@hauke-m.de, zajec5@gmail.com, tsbogend@alpha.franken.de,
 robh+dt@kernel.org, jonas.gorski@gmail.com,
 bcm-kernel-feedback-list@broadcom.com, linux-mips@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org
References: <20200609105244.4014823-1-noltari@gmail.com>
 <20200609105244.4014823-5-noltari@gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <56bd5a50-f985-04c6-0c62-a48cbbabac4c@gmail.com>
Date: Tue, 9 Jun 2020 19:27:24 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Firefox/68.0 Thunderbird/68.9.0
MIME-Version: 1.0
In-Reply-To: <20200609105244.4014823-5-noltari@gmail.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200609_192728_496883_49C746FC 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:442 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [f.fainelli[at]gmail.com]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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

CgpPbiA2LzkvMjAyMCAzOjUyIEFNLCDDgWx2YXJvIEZlcm7DoW5kZXogUm9qYXMgd3JvdGU6Cj4g
QkNNNjM2MiBTb0NzIGhhdmUgYSBwb3dlciBkb21haW4gY29udHJvbGxlciB0byBlbmFibGUvZGlz
YWJsZSBjZXJ0YWluCj4gY29tcG9uZW50cyBpbiBvcmRlciB0byBzYXZlIHBvd2VyLgo+IAo+IFNp
Z25lZC1vZmYtYnk6IMOBbHZhcm8gRmVybsOhbmRleiBSb2phcyA8bm9sdGFyaUBnbWFpbC5jb20+
CgpBY2tlZC1ieTogRmxvcmlhbiBGYWluZWxsaSA8Zi5mYWluZWxsaUBnbWFpbC5jb20+Ci0tIApG
bG9yaWFuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwps
aW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJh
ZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51
eC1hcm0ta2VybmVsCg==
