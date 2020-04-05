Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7211119EBED
	for <lists+linux-arm-kernel@lfdr.de>; Sun,  5 Apr 2020 16:12:11 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=jzL323iMSSHbgeialMTkNt8z1o3U7r9dCot566kR04A=; b=RHMzej66JB6YCR
	Bii9XiRD7ECb+8J67rY8k0ZfcXnUptsahHFwlX0atMAG4zuGWt0rF0Nup+eLcDBUjshFGXN0kY11V
	5X21aooqFQbSfjuMU7hcgcpdyv/OolU/d1Y+5dR7EwdXHdXJ9DCQCGUt4DHozn+ICLU4cPAses4AO
	oYSHH5yCqLRq8aREWWWcN/dfrg2wFiFM3b5hXcfHhoGFRKbWN+UMy9h5xArnflbKWIffJWOTNO5Hd
	HJvvk2tIeQldnSUgaseWBdGILCkb8HpkFpAy9JbL1uZRumZ2AdXwnzCZzenmTxyHwAOuxKTiYue3a
	Nj7HRxj9xWiSV6QbjlSQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL60M-00062C-HK; Sun, 05 Apr 2020 14:12:06 +0000
Received: from mail-lf1-x141.google.com ([2a00:1450:4864:20::141])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL60G-00061k-6Y
 for linux-arm-kernel@lists.infradead.org; Sun, 05 Apr 2020 14:12:01 +0000
Received: by mail-lf1-x141.google.com with SMTP id r17so6038354lff.2
 for <linux-arm-kernel@lists.infradead.org>;
 Sun, 05 Apr 2020 07:11:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=XleQO4WpERYdOmy1fbpTS+4ISogr+wHW1vFifmpyodE=;
 b=fdc5sH/cRUKo6KAsRvp4eot+aiIc/g0j3762pp9C2VfqdoxdmqNZgdydgkUyiN2A0F
 oqm0IIqKkpAuIQOrPqmltADM6jBPV7vgVfXksDLcDOGGO/v3d70hy2K8gMbo5Fve9+r4
 TWGRS38lmO4IZSspoUc47GIGnpu+oCO4MKv5UfHhRRLR6uYakbBmVw0RFjxqKSFWlFgz
 CAHCYGJGXeKgy9L6abus3eJNYJiMfS9Dci6cDgMC9OQUdGkSWcr5G9Pjzs1EY9tSTAsz
 ze+DpQHiyWaVPQAODkV+Fq96STmwwW/emOunpt+gYcrwn5qVWnPd56XKah9WW7dB8zsN
 nJ5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=XleQO4WpERYdOmy1fbpTS+4ISogr+wHW1vFifmpyodE=;
 b=RSKUCgUuCH2l5+v0jEt1Lp3wGe+UF9Z/gch2b5bl++OVeUEzQbkLiaC/tuAcGuQ+e/
 ONdX8gpAtprtKlSoduZwR2EnAd1C0c5FvYE6xtycrsBJ7THe02NxcS7QZDMHqTGfImp/
 lbM2jc99pBxTU0ZlAygRHAB1hJ9D6E5vyt9H7Q/1ZSjuXi9YRe/t790nH/20I0qCzdFe
 6Z8C3J02QOzuwDppxtB3Ygv3yC/vQwqoMw76W1E4zsQasYiJYlNj620z1Tyy/zBfq2VZ
 CzqWox37M5XD31P5QhZDL2sK+xOk0vQezX8zavy5qR3Wb5BMlXpzt7yFI/kRiXuuqo/v
 OGyg==
X-Gm-Message-State: AGi0PuauBjZUoJYvO969xfzqsRAcNO1lKsnpkpc50zz+VJdrwfiX/tTe
 AEqVb5y1iLVo/RfnNfN0Z7I=
X-Google-Smtp-Source: APiQypLVoKcshv+FiT9j3E9JOCfkZaibdzpWPVu3sNp1yGEE4gobEgWuAA1GCJX39Y527pWDdWS0xg==
X-Received: by 2002:a05:6512:308e:: with SMTP id
 z14mr10880297lfd.110.1586095918181; 
 Sun, 05 Apr 2020 07:11:58 -0700 (PDT)
Received: from [192.168.2.145] (ppp91-78-208-152.pppoe.mtu-net.ru.
 [91.78.208.152])
 by smtp.googlemail.com with ESMTPSA id m193sm8047452lfa.39.2020.04.05.07.11.57
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 05 Apr 2020 07:11:57 -0700 (PDT)
Subject: Re: [TEGRA194_CPUFREQ Patch v2 2/3] cpufreq: Add Tegra194 cpufreq
 driver
To: Sumit Gupta <sumitg@nvidia.com>, rjw@rjwysocki.net,
 viresh.kumar@linaro.org, catalin.marinas@arm.com, will@kernel.org,
 thierry.reding@gmail.com, jonathanh@nvidia.com, talho@nvidia.com,
 linux-pm@vger.kernel.org, linux-tegra@vger.kernel.org,
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <1586028547-14993-1-git-send-email-sumitg@nvidia.com>
 <1586028547-14993-3-git-send-email-sumitg@nvidia.com>
From: Dmitry Osipenko <digetx@gmail.com>
Message-ID: <ba12496f-ac27-d4f2-dc69-d0a7e2d58679@gmail.com>
Date: Sun, 5 Apr 2020 17:11:56 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.5.0
MIME-Version: 1.0
In-Reply-To: <1586028547-14993-3-git-send-email-sumitg@nvidia.com>
Content-Language: en-US
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_071200_240452_E19EE1B7 
X-CRM114-Status: UNSURE (   9.19  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:141 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [digetx[at]gmail.com]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: bbasu@nvidia.com, mperttunen@nvidia.com
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

MDQuMDQuMjAyMCAyMjoyOSwgU3VtaXQgR3VwdGEg0L/QuNGI0LXRgjoKLi4uCj4gK3N0YXRpYyB2
b2lkIHRlZ3JhX3JlYWRfY291bnRlcnMoc3RydWN0IHdvcmtfc3RydWN0ICp3b3JrKQo+ICt7Cj4g
KwlzdHJ1Y3QgcmVhZF9jb3VudGVyc193b3JrICpyZWFkX2NvdW50ZXJzX3dvcms7Cj4gKwlzdHJ1
Y3QgdGVncmFfY3B1X2N0ciAqYzsKPiArCXU2NCB2YWw7Cj4gKwo+ICsJLyoKPiArCSAqIHJlZl9j
bGtfY291bnRlcigzMiBiaXQgY291bnRlcikgcnVucyBvbiBjb25zdGFudCBjbGssCj4gKwkgKiBw
bGxfcCg0MDhNSHopLgoKSXMgY2hhbmdpbmcgUExMUCByYXRlIHJlYWxseSBpbXBvc3NpYmxlIG9u
IFQxOTQ/IFdoYXQgbWFrZXMgeW91IHNheSB0aGF0Cml0IHJ1bnMgb24gYSBmaXhlZCA0MDhNSHo/
CgpfX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1h
cm0ta2VybmVsIG1haWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5v
cmcKaHR0cDovL2xpc3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0t
a2VybmVsCg==
