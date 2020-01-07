Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 158BE132360
	for <lists+linux-arm-kernel@lfdr.de>; Tue,  7 Jan 2020 11:18:04 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=4cKAZdzR7PAHFloglcw3ihFWdTBARN1J5+IWJygrhRQ=; b=h4MMdraKxa96It
	UO5BDp5k1Dqu0OmbkQE9pIx8xlYzPBQ5GFqp+gnK0LIQpXkuGG0H11bSI0nsTNJAGBhqWVKoE7xay
	whFwMTKIdfHMIzOtHBRXM1cYy5+OgOirrK8DKx4IQptScCZ6aKBxsFJHGtZ+TESPbH3M71o4YjI4g
	R08yCWcryhFcc9VhJ7MwSGCACFkWNFWh805CEo5a5qevQ2bG0mQ7DGJYpBZmaor/OdKvjZGTSkFzI
	uDZSBM4OYdU2XRft9VdKSq1i8jptO/LzXlv3mtGhksRZ1xKZ5UWL2+6Y38SXmwG5qDkV2sdY43Zm6
	pb65507ee5Xy+zCntomg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iolvv-0004D3-8i; Tue, 07 Jan 2020 10:17:55 +0000
Received: from mail-wr1-x444.google.com ([2a00:1450:4864:20::444])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iolvo-0004Cb-6y
 for linux-arm-kernel@lists.infradead.org; Tue, 07 Jan 2020 10:17:49 +0000
Received: by mail-wr1-x444.google.com with SMTP id j42so53214666wrj.12
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 07 Jan 2020 02:17:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to
 :user-agent; bh=wADUiklQGqkVRHS/MFhQD6ufQzvydVIjp5oA5mx3O5c=;
 b=aXIdqgLXGcmv5XCWk5/AXFvt6fEui+64l98g2DfWsHjiicwC53+ccrVBEOWxGu6r0Z
 OeX/eWnGUKmDmWq7Gm8cMLjPFpnCFP9nsTKP6jENm0v0ulgpfhpaLkQTsM42fLOdPXyi
 qeIUzoNItiGkVJOOoxvkNLtbZG7kSBpRqWXtQcwKWgprkCWjkmey0lApcH1eahUlZuEq
 vAtZMKN8dRXjrlg6LeuOpKVvZodzVc/EhPQ31bmlhdOF470N7/qIQr287KSbaJyx8DdH
 k/2w1gbE3JFdqVDxXHkkkuUgrYBSo+9xRGMKdA1Q1tGNlLlJJLBySBzZ8tYjR/O3eebQ
 H+Yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to:user-agent;
 bh=wADUiklQGqkVRHS/MFhQD6ufQzvydVIjp5oA5mx3O5c=;
 b=ZTQWNBez8WHhyCf8pNCR7/ghKN697IdtBCExO5cOnwhCsbZrT4UeBbrvNGgCLXwD0Q
 ED95cZtT3xAwpklKms1SEPjQ7938Y4xWDHoYTTa4aSo7+IBrUKi1r0bK1UqTDehGhsXi
 JbpFIZ9RHKzcKI3n/h6WxzeFOeLSNPbLYZ2rQ/DEi/3KY1bsMDgCfOgprYcFNr/y+pYJ
 ZFF7B/7QJM0OZC5fD2FQGLYEplW8GxYoKChwsB/WnY2XnMADAn2q9rBVmZrzSaC9ebPh
 9WyF9C9eYgCFLC6S80S5GVO3dvXY+STpkce8bwuDQDYniZRwBo4um6UQY0AW/gkl/zDG
 pQYQ==
X-Gm-Message-State: APjAAAV9w6MOzu/HRMqxA3wD4gJycFrNVD5+9wzg6r+GSC9/EnrBSkc6
 OthGAML7VpeWjOlNB+y3MRQ3ug==
X-Google-Smtp-Source: APXvYqz4Rj4ufV3lelc5BTGQJhC+R/z8hRz+z92FuK07DVJDQcMJSplOxlPh60gzjWH8pqwxktrksA==
X-Received: by 2002:a05:6000:367:: with SMTP id
 f7mr105722054wrf.174.1578392266202; 
 Tue, 07 Jan 2020 02:17:46 -0800 (PST)
Received: from dell ([2.27.35.135])
 by smtp.gmail.com with ESMTPSA id u22sm80773920wru.30.2020.01.07.02.17.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 02:17:45 -0800 (PST)
Date: Tue, 7 Jan 2020 10:17:48 +0000
From: Lee Jones <lee.jones@linaro.org>
To: Claudiu Beznea <claudiu.beznea@microchip.com>
Subject: [GIT PULL] Immutable branch between MFD and DRM due for the v5.6
 merge window
Message-ID: <20200107101748.GC14821@dell>
References: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <1576672109-22707-1-git-send-email-claudiu.beznea@microchip.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_021748_255514_1C26CBD1 
X-CRM114-Status: UNSURE (   9.84  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:444 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: alexandre.belloni@bootlin.com, airlied@linux.ie,
 dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
 boris.brezillon@bootlin.com, sam@ravnborg.org, peda@axentia.se,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

VGhlIE1GRCBwYXJ0cyBmb3IgdGVzdGluZzoKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBj
b21taXQgZTQyNjE3YjgyNWY4MDczNTY5ZGE3NmRjNDUxMGJmYTAxOWIxYzM1YToKCiAgTGludXgg
NS41LXJjMSAoMjAxOS0xMi0wOCAxNDo1Nzo1NSAtMDgwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhl
IEdpdCByZXBvc2l0b3J5IGF0OgoKICBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4
L2tlcm5lbC9naXQvbGVlL21mZC5naXQgdGFncy9pYi1tZmQtZHJtLXY1LjYKCmZvciB5b3UgdG8g
ZmV0Y2ggY2hhbmdlcyB1cCB0byAxMGY5MTY3NjY0MzYyYmFjNmY0NDgxMzY4N2NmNTJmZWM5ZDE1
ODQ1OgoKICBtZmQ6IGF0bWVsLWhsY2RjOiBSZXR1cm4gaW4gY2FzZSBvZiBlcnJvciAoMjAyMC0w
MS0wNyAxMDowODo1OCArMDAwMCkKCi0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0KSW1tdXRhYmxlIGJyYW5jaCBiZXR3ZWVuIE1G
RCBhbmQgRFJNIGR1ZSBmb3IgdGhlIHY1LjYgbWVyZ2Ugd2luZG93CgotLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tCkNsYXVkaXUg
QmV6bmVhICgyKToKICAgICAgbWZkOiBhdG1lbC1obGNkYzogQWRkIHN0cnVjdCBkZXZpY2UgbWVt
YmVyIHRvIHN0cnVjdCBhdG1lbF9obGNkY19yZWdtYXAKICAgICAgbWZkOiBhdG1lbC1obGNkYzog
UmV0dXJuIGluIGNhc2Ugb2YgZXJyb3IKCiBkcml2ZXJzL21mZC9hdG1lbC1obGNkYy5jIHwgMTgg
KysrKysrKysrKysrKystLS0tCiAxIGZpbGUgY2hhbmdlZCwgMTQgaW5zZXJ0aW9ucygrKSwgNCBk
ZWxldGlvbnMoLSkKCi0tIApMZWUgSm9uZXMgW+adjueQvOaWr10KTGluYXJvIFNlcnZpY2VzIFRl
Y2huaWNhbCBMZWFkCkxpbmFyby5vcmcg4pSCIE9wZW4gc291cmNlIHNvZnR3YXJlIGZvciBBUk0g
U29DcwpGb2xsb3cgTGluYXJvOiBGYWNlYm9vayB8IFR3aXR0ZXIgfCBCbG9nCgpfX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fXwpsaW51eC1hcm0ta2VybmVsIG1h
aWxpbmcgbGlzdApsaW51eC1hcm0ta2VybmVsQGxpc3RzLmluZnJhZGVhZC5vcmcKaHR0cDovL2xp
c3RzLmluZnJhZGVhZC5vcmcvbWFpbG1hbi9saXN0aW5mby9saW51eC1hcm0ta2VybmVsCg==
