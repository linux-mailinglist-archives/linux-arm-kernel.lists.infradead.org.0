Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E9A41D28BF
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 14 May 2020 09:28:06 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=KfAN8+7fHvqJcHyUPR7kJdnjJxcZbxH5f4dkl229vKk=; b=pQPvGNWxn7wSskXEzBz2YSqtZ
	Sr0w8Qx1XKii6gCVCp14ysLVU/Pvu7F3ECcoQjD8sCn8gc6SYL7UKuFnHiGIhNDNf1iiPews9HeEi
	Yne52nPfXc/QUEhSziBV1QGbhDcADYDMGFTVySEFXyQFed1R3qbgF2RfK80S95s9m/MeqUvLnV9x7
	qDkly/qum4Q6aD6yUKdy4mFLJTuhrKAymN9raIMtBaJwfDlfAssq3v0kfPUm6nKR13tr/xpnSlmzw
	t0qDweoTsExE8c55ni4XIY9DgiKJs71RP1nNUmjPF8hQ1i7UYrOXWl6ZEiFl97iw5CbANuZKoAHBQ
	5+volnwLg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jZ8Hd-0003Wm-5Q; Thu, 14 May 2020 07:27:57 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jZ8HV-0003WD-Kx
 for linux-arm-kernel@lists.infradead.org; Thu, 14 May 2020 07:27:51 +0000
Received: by mail-lf1-x144.google.com with SMTP id z22so1762731lfd.0
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 14 May 2020 00:27:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=OvIg8OTmvpD4AIra61gchuv+YQzJPkLcRjdOE9A6l2A=;
 b=T58w69kBOxFktle1yYsy3hLN3gMn/osjm5YR8FTXl4uYp8PjKu2TZzOiHNgCx36vrE
 Wl/ZIQZLvdR8y6+piwx3KEwGBHD8kyjMwzas/eYyJaxuJxY8/KGnPz4HlvtDAulI9I15
 lGRt7VR2EK+bxqp2oZhR93/egU4OCxQtySGt6pV8RF67V5Vj3IcxPdw3Km1KhdoaRiaq
 bSo22sNuywieNiZ1fpmYK7epfyyHEaUnQ1U7yB7K1aXP/AJXWde5jIFrUkDbeeALECIL
 u0FuTV6q/ZfQm1Z7KARSGRX7zu3oek6QkvyBvFcfjjmEMIagj6XaGUbGVW2NX71/UJ7h
 Omtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=OvIg8OTmvpD4AIra61gchuv+YQzJPkLcRjdOE9A6l2A=;
 b=iuiwR42NrFPPFSs9y4B13qtgQKplA2g0uHvKg6yfNOYX0oK/1SnZCxUi41HdNMf/Xn
 yXuYeVtZZBXcDmfVlLPm+NZEAOoj7j8faZjzYeUcAzi35k46+Lha+UXd6PSSAuNj/yxE
 VskrpU7ccq3TuAiiamVlBH2o+kmCp737PXCUELLbLWATGKn7/c3xaD6+NLNwQIOW+cAS
 hSGbgZe/I8LhA5Xm0a4B9m6ZxqhwNi0ebrbEyDCvbWJW3/hsF98+yhLJSrQYInBV+T/Z
 s1L+8qvzoaq2hWsfpfIs5FDRKEHj1CRadHaVOap5oe2Hln1vkrT8a7qnb6dk+KPNhTV8
 9XhQ==
X-Gm-Message-State: AOAM533nGgAAwYbxBsArQJaTVDTvVrSVwYJzIRGMia6fT7Fz+BQ0Cpa+
 7PGXwiCSkhhFfvYqrZXRn7cI6Nxa4U9MA4XX9/Cnyw==
X-Google-Smtp-Source: ABdhPJzL0WsvMihqen9758VYmk6yEgm/ZN9/XilvuCWzmgJOy/SB9sZscduKIMjRAKM98dv/ishZnbn+Lr4DfqPaa0A=
X-Received: by 2002:a19:ccce:: with SMTP id c197mr2356496lfg.59.1589441267234; 
 Thu, 14 May 2020 00:27:47 -0700 (PDT)
MIME-Version: 1.0
References: <1588758017-30426-1-git-send-email-sumit.garg@linaro.org>
 <1588758017-30426-3-git-send-email-sumit.garg@linaro.org>
 <ef2093f96eae7e9e6785f2c0ad00604d8adfd3be.camel@linux.intel.com>
In-Reply-To: <ef2093f96eae7e9e6785f2c0ad00604d8adfd3be.camel@linux.intel.com>
From: Sumit Garg <sumit.garg@linaro.org>
Date: Thu, 14 May 2020 12:57:35 +0530
Message-ID: <CAFA6WYPr1iL-uJgSRu_61uv=2DhuEdDVdQLDuyPEOOK2jEgvyg@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] KEYS: trusted: Introduce TEE based Trusted Keys
To: Jarkko Sakkinen <jarkko.sakkinen@linux.intel.com>
Content-Type: multipart/mixed; boundary="00000000000021218505a596a2dc"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200514_002749_692117_D2FF8479 
X-CRM114-Status: GOOD (  17.28  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: "tee-dev @ lists . linaro . org" <tee-dev@lists.linaro.org>,
 Daniel Thompson <daniel.thompson@linaro.org>, op-tee@lists.trustedfirmware.org,
 Jonathan Corbet <corbet@lwn.net>, James Bottomley <jejb@linux.ibm.com>,
 Janne Karhunen <janne.karhunen@gmail.com>,
 Linux Doc Mailing List <linux-doc@vger.kernel.org>,
 James Morris <jmorris@namei.org>, Mimi Zohar <zohar@linux.ibm.com>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>, dhowells@redhat.com,
 linux-security-module@vger.kernel.org,
 "open list:ASYMMETRIC KEYS" <keyrings@vger.kernel.org>,
 Markus Wamser <Markus.Wamser@mixed-mode.de>,
 Casey Schaufler <casey@schaufler-ca.com>, linux-integrity@vger.kernel.org,
 Jens Wiklander <jens.wiklander@linaro.org>,
 linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
 "Serge E. Hallyn" <serge@hallyn.com>
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

--00000000000021218505a596a2dc
Content-Type: text/plain; charset="UTF-8"

On Thu, 14 May 2020 at 05:58, Jarkko Sakkinen
<jarkko.sakkinen@linux.intel.com> wrote:
>
> On Wed, 2020-05-06 at 15:10 +0530, Sumit Garg wrote:
> > Add support for TEE based trusted keys where TEE provides the functionality
> > to seal and unseal trusted keys using hardware unique key.
> >
> > Refer to Documentation/tee.txt for detailed information about TEE.
> >
> > Signed-off-by: Sumit Garg <sumit.garg@linaro.org>
>
> The implementation looks solid but how or who could possibly test this?
>
> I do posses (personally, not from employer) bunch of ARM boards but my
> TZ knowledge is somewhat limited (e.g. how can I get something running
> in TZ).
>

Although, it should be fairly easy to test this implementation on an
ARM board which supports OP-TEE. But since you are new to ARM
TrustZone world, I would suggest you get used to OP-TEE on Qemu based
setup. You could find pretty good documentation for this here [1] but
for simplicity let me document steps here to test this trusted keys
feature from scratch:

# Install prerequisites as mentioned here [2]

# Get the source code
$ mkdir -p <optee-project>
$ cd <optee-project>
$ repo init -u https://github.com/OP-TEE/manifest.git -m qemu_v8.xml
$ repo sync -j4 --no-clone-bundle

# Get the toolchain
$ cd <optee-project>/build
$ make -j2 toolchains

# As trusted keys work is based on latest tpmdd/master, so we can
change Linux base as follows:
$ cd <optee-project>/linux
$ git remote add tpmdd git://git.infradead.org/users/jjs/linux-tpmdd.git
$ git pull tpmdd
$ git checkout -b tpmdd-master remotes/tpmdd/master
# Cherry-pick and apply TEE features patch-set from this PR[3]
# Apply this Linux trusted keys patch-set.

# Now move on to build the source code
$ cd <optee-project>/build
# Apply attached "keyctl_change" patch
$ patch -p1 < keyctl_change
$ make -j`nproc`
CFG_IN_TREE_EARLY_TAS=trusted_keys/f04a0fe7-1f5d-4b9b-abf7-619b85b4ce8c

# Run QEMU setup
$ make run-only
# Type "c" on QEMU console to continue boot

# Now there should be two virtual consoles up, one for OP-TEE and
other for Linux
# On Linux console, you can play with "keyctl" utility to have trusted
and encrypted keys based on TEE.

Do let me know in case you are stuck while following the above steps.

[1] https://optee.readthedocs.io/en/latest/building/devices/qemu.html#qemu-v8
[2] https://optee.readthedocs.io/en/latest/building/prerequisites.html#prerequisites
[3] https://lkml.org/lkml/2020/5/4/1062

-Sumit

> /Jarkko
>

--00000000000021218505a596a2dc
Content-Type: application/octet-stream; name=keyctl_change
Content-Disposition: attachment; filename=keyctl_change
Content-Transfer-Encoding: base64
Content-ID: <f_ka6g56md0>
X-Attachment-Id: f_ka6g56md0

ZGlmZiAtLWdpdCBhL2NvbW1vbi5tayBiL2NvbW1vbi5tawppbmRleCBhZWI3YjQxLi42NjNlNTI4
IDEwMDY0NAotLS0gYS9jb21tb24ubWsKKysrIGIvY29tbW9uLm1rCkBAIC0yMjksNiArMjI5LDcg
QEAgQlIyX1BBQ0tBR0VfT1BURUVfVEVTVF9TREsgPz0gJChPUFRFRV9PU19UQV9ERVZfS0lUX0RJ
UikKIEJSMl9QQUNLQUdFX09QVEVFX1RFU1RfU0lURSA/PSAkKE9QVEVFX1RFU1RfUEFUSCkKIEJS
Ml9QQUNLQUdFX1NUUkFDRSA/PSB5CiBCUjJfVEFSR0VUX0dFTkVSSUNfR0VUVFlfUE9SVCA/PSAk
KGlmICQoQ0ZHX05XX0NPTlNPTEVfVUFSVCksdHR5QU1BJChDRkdfTldfQ09OU09MRV9VQVJUKSx0
dHlBTUEwKQorQlIyX1BBQ0tBR0VfS0VZVVRJTFMgOj0geQogCiAjIEFsbCBCUjJfKiB2YXJpYWJs
ZXMgZnJvbSB0aGUgbWFrZWZpbGUgb3IgdGhlIGVudmlyb25tZW50IGFyZSBhcHBlbmRlZCB0bwog
IyAuLi9vdXQtYnIvZXh0cmEuY29uZi4gQWxsIHZhbHVlcyBhcmUgcXVvdGVkICIuLi4iIGV4Y2Vw
dCB5IGFuZCBuLgpkaWZmIC0tZ2l0IGEva2NvbmZpZ3MvcWVtdS5jb25mIGIva2NvbmZpZ3MvcWVt
dS5jb25mCmluZGV4IDM2OGMxOGEuLjgzMmFiNzQgMTAwNjQ0Ci0tLSBhL2tjb25maWdzL3FlbXUu
Y29uZgorKysgYi9rY29uZmlncy9xZW11LmNvbmYKQEAgLTIwLDMgKzIwLDUgQEAgQ09ORklHXzlQ
X0ZTPXkKIENPTkZJR185UF9GU19QT1NJWF9BQ0w9eQogQ09ORklHX0hXX1JBTkRPTT15CiBDT05G
SUdfSFdfUkFORE9NX1ZJUlRJTz15CitDT05GSUdfVFJVU1RFRF9LRVlTPXkKK0NPTkZJR19FTkNS
WVBURURfS0VZUz15Cg==
--00000000000021218505a596a2dc
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--00000000000021218505a596a2dc--

