Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADEAA11D93A
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 12 Dec 2019 23:18:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=sss+0wH7db+8ke0eK81Hy7NxbPNr8SHGAgKEx6dlPps=; b=o3fzL4WGtZ/BaA
	KVJbIkfVS6WcxvaFVPmRoc6fg1cgCsE7GM553NrlwI0cbXkZVBEOjxe0PsKn03/0WbNbPpnP/9q0+
	Iq9+T8Qxb8KpgSj7iy92YcQ34VckvT6VkdK0m4MGkYcyI0SyduyplTZPIkjiUIQMWGkc78rU+7J7S
	GiwX/9t2A4H0vJQQZjglBRxnoAiCiEgRVZ2BvSloApkjzMkGYn7Sic1JtlIsxC6gR8FBf2xZxVw+N
	Wu1M9/wcdF4FwzfI/kw60+wPRJYaPNVIfHRNNKUyPnI8Uz/TsO7O0J+4fdd+EnBOQYPkpzOjMKLmb
	YmZw0qwq3n7QqaLfOD9A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ifWmz-0004us-Cu; Thu, 12 Dec 2019 22:18:29 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ifWmn-0004uY-P2
 for linux-arm-kernel@lists.infradead.org; Thu, 12 Dec 2019 22:18:18 +0000
Received: by mail-lj1-x243.google.com with SMTP id h23so391720ljc.8
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 12 Dec 2019 14:18:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=+XD2YJXA7ZufzS9uIPo90GBKSTjiLqm8CiBX+lsDlIA=;
 b=W+Vqr2bSf/ekx6RYypheSPdTHMmXh+i0Zm/wkXo+ZdjoxrWQh1r5CITjoFHsTLrf6i
 x9a81qOSV+C7tZat6qngJ+h3QtTmnLoge1Bfc3ZhuTCMigjO63vX8yv4UfJVIotxTj1j
 iZjIYZ1WmJ4mKP30UXIDqBFUJ8K5u2v1lB6OmDFcRkMH7lMWFUgT8j8Qbhw6LftpRCC+
 sawUX5P5FL3WPLmGQmDtIWB/epHF94hLmfbkM4aOxWxJukEmWl0Dyvv0Ziofs+WyR1rg
 LkUDHk6eKI/TWjvG5V4/MAIbi/d9YEFMG9LnaCe1Gh464qUgCePRRvohJdm21vR+pvvs
 wn2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=+XD2YJXA7ZufzS9uIPo90GBKSTjiLqm8CiBX+lsDlIA=;
 b=hrDBXlDm0dSCcZAJxG8cIG/uZFOR+zh8yn1dti1zerx5uVME3O2Ho6Dqp6xkgTkwCI
 dftJTkMtuKEQ1002cXeDSUMzsSRC1JTisfgWVGMLEdq//Tn/VlD1NX69T+bnoq5yTjg9
 8iIBn4BD/WWh4+BQROzgKmIs5wPKQ2q8+StC9ugHkPXSXby/puLThfrzgW/K1gL8cEf/
 PA571PsB9N33dv8h7CgX3ZUlRtFeh8KzICIxnKUAC3DuI+p5neo81fkiIfrQPXRIP5T2
 rqx271epBrmG0ZfhocG6e37fr6D21BYcrSvNBWpWAZqQbzKmM2CT8lxE5t1lefmvVGAe
 LoFA==
X-Gm-Message-State: APjAAAX9RXXSB/l35CVVWr22mKT/3EYh1borc39bFC9gql2CcoHnitt4
 P4gsC9WJS44jqFc1cnWHN0s=
X-Google-Smtp-Source: APXvYqyoqLQrADAtdeclQnySLqArLCxK1fwquekZF6UdGDo9yxFqAnEXdQE+naQF4PTlDXetcqZSnQ==
X-Received: by 2002:a2e:9b8f:: with SMTP id z15mr7595279lji.20.1576189092618; 
 Thu, 12 Dec 2019 14:18:12 -0800 (PST)
Received: from [192.168.2.145] (79-139-233-37.dynamic.spd-mgts.ru.
 [79.139.233.37])
 by smtp.googlemail.com with ESMTPSA id 22sm4147820ljw.9.2019.12.12.14.18.11
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 Dec 2019 14:18:12 -0800 (PST)
Subject: Re: [PATCH] ARM: tegra: Fix restoration of PLLM when exiting suspend
To: Peter De Schrijver <pdeschrijver@nvidia.com>
References: <20191210103708.7023-1-jonathanh@nvidia.com>
 <1f2a4f23-5be5-aa7e-6eb4-2aeb4058481d@gmail.com>
 <1fe9cd2d-50a2-aae5-95fa-0329acce4c4c@gmail.com>
 <20191211085016.GW28289@pdeschrijver-desktop.Nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <5ac5de2a-e43f-5332-8453-b73f6fdd64b7@gmail.com>
Date: Fri, 13 Dec 2019 01:18:11 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.3.0
MIME-Version: 1.0
In-Reply-To: <20191211085016.GW28289@pdeschrijver-desktop.Nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191212_141817_814342_329A8D12 
X-CRM114-Status: GOOD (  14.72  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (digetx[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: linux-tegra@vger.kernel.org, Thierry Reding <thierry.reding@gmail.com>,
 stable@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
 Jon Hunter <jonathanh@nvidia.com>
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MTEuMTIuMjAxOSAxMTo1MCwgUGV0ZXIgRGUgU2NocmlqdmVyINC/0LjRiNC10YI6Cj4gT24gVHVl
LCBEZWMgMTAsIDIwMTkgYXQgMTE6Mjk6NDJQTSArMDMwMCwgRG1pdHJ5IE9zaXBlbmtvIHdyb3Rl
Ogo+PiBFeHRlcm5hbCBlbWFpbDogVXNlIGNhdXRpb24gb3BlbmluZyBsaW5rcyBvciBhdHRhY2ht
ZW50cwo+Pgo+Pgo+PiAxMC4xMi4yMDE5IDIyOjI4LCBEbWl0cnkgT3NpcGVua28g0L/QuNGI0LXR
gjoKPj4+IEhlbGxvIEpvbiwKPj4+Cj4+PiBQTExNJ3MgZW5hYmxlLXN0YXR1cyBjb3VsZCBiZSBk
ZWZpbmVkIGVpdGhlciBieSBQTUMgb3IgQ2FSLiBUaHVzIGF0Cj4+PiBmaXJzdCB5b3UgbmVlZCB0
byBjaGVjayB3aGV0aGVyIFBNQyBvdmVycmlkZXMgQ2FSJ3MgZW5hYmxlIGFuZCB0aGVuCj4+PiBq
dWRnZSB0aGUgZW5hYmxlIHN0YXRlIGJhc2VkIG9uIFBNQyBvciBDYVIgc3RhdGUgcmVzcGVjdGl2
ZWx5Lgo+Pj4KPj4KPj4gQWN0dWFsbHksIG5vdyBJIHRoaW5rIHRoYXQgaXQgZG9lc24ndCBtYWtl
IHNlbnNlIHRvIGNoZWNrIFBNQyBXQjAgc3RhdGUKPj4gYXQgYWxsLiBJSVVDLCBQTExNJ3Mgc3Rh
dGUgb2YgdGhlIFdCMCByZWdpc3RlciBkZWZpbmVzIHdoZXRoZXIgQm9vdCBST00KPj4gc2hvdWxk
IGVuYWJsZSBQTExNIG9uIHJlc3VtZSBmcm9tIHN1c3BlbmQuIFRodXMgaXQgd2lsbCBiZSBjb3Jy
ZWN0IHRvCj4+IGNoZWNrIG9ubHkgdGhlIENhUidzIGVuYWJsZS1zdGF0ZSBvZiBQTExNLgo+Pgo+
PiBJJ20gbm90IHN1cmUgd2hhdCdzIHRoZSBpZGVhIG9mIFdCMCBvdmVycmlkaW5nLCBtYXliZSB0
byByZXN1bWUgZmFzdGVyLgo+PiBQZXRlciwgY291bGQgeW91IHBsZWFzZSBjbGFyaWZ5IHRoYXQ/
Cj4gCj4gSSBkb24ndCBrbm93IHdoeSB0aGVzZSBvdmVycmlkaW5nIGJpdHMgZXhpc3QuIFRoZSBj
b2RlIGZvciB0aGVtIHdhcyBpbgo+IHRoZSBkb3duc3RyZWFtIGRyaXZlciBzbyBJIGltcGxlbWVu
dGVkIHRoZSBzYW1lIGluIHRoZSB1cHN0cmVhbSBkcml2ZXIKPiA6KQoKT2theSwgSSdsbCB0cnkg
dG8gZmlndXJlIG91dCBob3cgdG8gY2xlYW4gdXAgaXQgcHJvcGVybHkuCgpfX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1haWxp
bmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xpc3Rz
LmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
