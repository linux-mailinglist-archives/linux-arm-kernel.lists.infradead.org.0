Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 52D6C11410C
	for <lists+linux-arm-kernel@lfdr.de>; Thu,  5 Dec 2019 13:56:07 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8bYLzhKpHFFw5ydXn+lXxlT2AngoJDXvUjMR5Wn6rq0=; b=HW9f/n04QawWm0
	mAKZA7EOH8cy3cHbPHjuEKTU60CfYP5VM9naEmxN55Q1AFGO26Qr8B+g+LVSQhFgeDziitQign8On
	fIcK2KO4M64LZNUtarsaOZXOKdSmGh+Z74p92d7W5VxCg50cilrKlypxMRkGaYCM0iCiSAoVDX7ow
	+Fa6n8IfqSd77bj/u2bPB5euGaBn7YuOqlLiUouFJqoTuxNeDtPg8XrE34aYEcgjw9hSExVkNK85x
	xZtJ4ZPnQRHcgRisWXnxe0+l6t2prtQYFYd0jvvATvmv5WsDe0INyG6neRbUBexTiDsMzpbt392k5
	StOyeqjNigGRBaLgpN/Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1icqfq-0001HI-OC; Thu, 05 Dec 2019 12:56:02 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1icqfi-0001GL-2c
 for linux-arm-kernel@lists.infradead.org; Thu, 05 Dec 2019 12:55:55 +0000
Received: by mail-lf1-x144.google.com with SMTP id f15so1586170lfl.13
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 05 Dec 2019 04:55:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=1qiyn/834OJWIRhu0XZvdM5LzzzV2eZ2ASR6H3Xv50k=;
 b=sdPdpqV7eZ51owcp/denn3Sm5zZ52nNuZOo5AfbnXgCxUXN/N/dRX9HG8ORXYLqahg
 eeczwMorTzAhvIod8GQef1C1W/HrnTKnghCluMfqBmOVI5zmKof9JgQDcSsoOjwa8prD
 l6Mayp1+sR1N+CfiKvIfJ/unPu/bXHcr3zlqk1ykZa5vHdBPsZFe/SGsYhhBS8RDsMu5
 NIkYcgs0e8dgo+0pC06ohP95GCLjLXfLa5LYGGYR1DcECnYlKRRdKnFOO8HnuTojjWnM
 05ZC3FfDdILf1bcrX4ThjZwbIw2UA5QuhUTmTgkM1VzNAUk9tVUvFSkx7ucBqjsI6HOU
 zdIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=1qiyn/834OJWIRhu0XZvdM5LzzzV2eZ2ASR6H3Xv50k=;
 b=aXFn8uW/lfmGgOpHVVh1fFFVGvhM2qgY555XCWYzQwOcDMKIWlKyWifRsUB9nWWqG8
 k9RbdCZjI/pspXwYjgxWXDeeeNNrKWPchjZhh4MK67fQ6vWV4PRMX7zF2jUGL9OP+Ul9
 Zd8tSK8m9Lv7oYtEJfhv63pkHbJLqxGM//rIhJZHRhLrC1A9c67q8nfwNOM3RiDSd5aB
 VCUEKrqYf2JTfV2rnEf2KfgXoaE8F36LQL7muS4sHzuo34oWdiKPgDjclN73CuqKT/nD
 MZrdCtMxSBDD24XCdkrbbkAt8LFpoS45EdqNAh6cYeE6rdj4EuecudZtW8rqiPc8g+lb
 gdhQ==
X-Gm-Message-State: APjAAAUYO76g+465eHZB1009ts+iUXo1ZwgKx+PwhU9zyIDYWDYXcazW
 k9FlPEMqSIQ/g1CqsyOESp8=
X-Google-Smtp-Source: APXvYqxQzn85bdWHUVxwXHtYVTF2R4LVHB0a0B7sZChjdjhVRMnoFP3Z/9lPLRLhcH2/1eQ27Rd3gw==
X-Received: by 2002:ac2:5a43:: with SMTP id r3mr5399483lfn.150.1575550547868; 
 Thu, 05 Dec 2019 04:55:47 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id e9sm1824997ljp.87.2019.12.05.04.55.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 05 Dec 2019 04:55:46 -0800 (PST)
Subject: Re: [TEGRA194_CPUFREQ Patch 2/3] cpufreq: Add Tegra194 cpufreq driver
To: Viresh Kumar <viresh.kumar@linaro.org>
References: <1575394348-17649-1-git-send-email-sumitg@nvidia.com>
 <1575394348-17649-2-git-send-email-sumitg@nvidia.com>
 <20191204054043.o4ff7pnqec3fwdgu@vireshk-i7>
 <7347caa6-43a3-f761-de83-481b45f7b22a@nvidia.com>
 <20191204112749.jkwlyteal4hfvnhb@vireshk-i7>
 <0b634341-ea2b-e9cd-4986-dc9a01c839bb@gmail.com>
 <20191205025125.imxnao2qwyons5zl@vireshk-i7>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <c26ed467-0e30-900b-4e69-762ee83e8377@gmail.com>
Date: Thu, 5 Dec 2019 15:55:45 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20191205025125.imxnao2qwyons5zl@vireshk-i7>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191205_045554_121309_C2F18D88 
X-CRM114-Status: GOOD (  10.69  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: bbasu@nvidia.com, linux-pm@vger.kernel.org, catalin.marinas@arm.com,
 rjw@rjwysocki.net, linux-kernel@vger.kernel.org, jonathanh@nvidia.com,
 talho@nvidia.com, thierry.reding@gmail.com, linux-tegra@vger.kernel.org,
 sumitg <sumitg@nvidia.com>, mperttunen@nvidia.com, will@kernel.org,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDUuMTIuMjAxOSAwNTo1MSwgVmlyZXNoIEt1bWFyINC/0LjRiNC10YI6Cj4gT24gMDQtMTItMTks
IDE2OjU3LCBEbWl0cnkgT3NpcGVua28gd3JvdGU6Cj4+IDA0LjEyLjIwMTkgMTQ6MjcsIFZpcmVz
aCBLdW1hciDQv9C40YjQtdGCOgo+Pj4gT24gMDQtMTItMTksIDE2OjI1LCBzdW1pdGcgd3JvdGU6
Cj4+Pj4gSW4gVDE5NCwgQ0NQTEVYIGRvZXNuJ3QgaGF2ZSBhY2Nlc3MgdG8gc2V0IGNsb2NrcyBh
bmQgdGhlCj4+Pj4KPj4+PiBjbGtfe2dldHxzZXR9X3JhdGUoKSBmdW5jdGlvbnMgc2V0IGNsb2Nr
cyBieSBob29rIHRvIEJQTVAgUjUuCj4+Pj4KPj4+PiBDUFUgZnJlcSBjYW4gYmUgZGlyZWN0bHkg
c2V0IGJ5IENDUExFWCB1c2luZyBNU1IoTlZGUkVRX1JFUV9FTDEpLgo+Pj4+Cj4+Pj4gQXMgRFZG
UyBydW4ncyBvbiBCUE1QLCBhbm90aGVyIE1TUiAoTlZGUkVRX0ZFRURCQUNLX0VMMSkgaXMKPj4+
Pgo+Pj4+IHVzZWQgdG8gcmVhZCB0aGUgY291bnRlcnMgYW5kIGNhbGN1bGF0ZSAiYWN0dWFsIiBj
cHUgZnJlcSBhdCBDQ1BMRVguCj4+Pj4KPj4+PiBTbywgImNwdWluZm9fY3VyX2ZyZXEiIG5vZGUg
Z2l2ZXMgdGhlIGFjdHVhbCBjcHUgZnJlcXVlbmN5IGFuZCBub3QKPj4+Pgo+Pj4+IGdpdmVuIGJ5
IG5vZGUgInNjYWxpbmdfY3VyX2ZyZXEiLgo+Pj4KPj4+IFJpZ2h0LCBidXQgd2h5IGNhbid0IHRo
aXMgYmUgaGlkZGVuIGluIHRoZSBDUFUncyBjbGsgZHJpdmVyIGluc3RlYWQsCj4+PiBzbyBjcHVm
cmVxIGRyaXZlciBjYW4ganVzdCBkbyBjbGtfZ2V0X3JhdGUoKSBhbmQgY2xrX3NldF9yYXRlKCkg
Pwo+Pgo+PiBXaGF0IGFib3V0IHRvIG1ha2UgdXNlIG9mIGRldl9wbV9vcHBfcmVnaXN0ZXJfc2V0
X29wcF9oZWxwZXIoKT8KPiAKPiBJdCBoYXMgYSBkaWZmZXJlbnQgcHVycG9zZSB3aGVyZSB3ZSBo
YXZlIHRvIHBsYXkgd2l0aCBkaWZmZXJlbnQKPiByZWd1bGF0b3JzLiBBbmQgdGhhdCB3b24ndCBo
ZWxwIHdpdGggY2xrX2dldF9yYXRlKCkgYW55d2F5LgoKSW5kZWVkIHRoYXQgd29uJ3QgaGVscCB3
aXRoIHRoZSBjbGsuCgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19f
X19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3Rz
LmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5m
by9saW51eC1hcm0ta2VybmVsCg==
