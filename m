Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B4F141FEF92
	for <lists+linux-arm-kernel@lfdr.de>; Thu, 18 Jun 2020 12:22:24 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=0LuzGkae72QJOl3WHeGwfgApbVN7+rHq5Myp3IeEIk8=; b=pzH+STVX94Dpoi
	BpBLAocIKLh4UsrIs21fOcWF275gK1soa478fWyutDxR96PshzkE79uSG2/VN0eYIhsKbezH2M71f
	qKtXQTjXw7h7xFpfLywy2dM8G5/3YfUdKmdIpH1KCsA+oAyDghoqxfJEYeppe8KPb/5tA9tKvzO2G
	UGZmpaH18jgVvIn9VEnBaJHwqMYHv2FsExqH9ZrXG6o7dewQ2//WO932reNQ8+dD+VVmAsKKm/MVU
	gh0ewudmAfY6SO6Jk5uZiK34Pr9Pz690+YE7EUzgmryXGT9qHFP7tuc+pfwoyTkxdS69cX+05RJ6w
	PvOVaeDC7FY5Ll0YXSdA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jlrgX-0002Gr-9T; Thu, 18 Jun 2020 10:22:17 +0000
Received: from mail-wr1-x442.google.com ([2a00:1450:4864:20::442])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jlrgD-0002GA-44
 for linux-arm-kernel@lists.infradead.org; Thu, 18 Jun 2020 10:21:59 +0000
Received: by mail-wr1-x442.google.com with SMTP id t18so5463567wru.6
 for <linux-arm-kernel@lists.infradead.org>;
 Thu, 18 Jun 2020 03:21:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:content-transfer-encoding:in-reply-to;
 bh=lc5UhnoSRIFlDb4bTQaq1FSaNFdyYRNankkKgGtxJsM=;
 b=QPX3pcoULeRgdl8S5TEBqcc2VmR03uompZGl6g1kKu/NL/Em080sZdrASGWlK2EQRg
 iUYJsnXXUuP2l5H7lghNfhm6e7DfDZB8JWnUn/tbYdwvBsdWpJxLgaxEnYJHjgnzgMpw
 3mFqngduzWwpciQJbBRQ6kl7j45e0UBKM1hAa1EJYMHfJvlYzWJ//F47grKwJm5rybRQ
 CCUxDrkozG6yAeZhvuCKl0HwzlLaxg+lYcM2Su9Ry8rFRDbWNCkQQcs5sjzzUtuat/iC
 sbbBUI9tpgXk8vu/WmvuTSBlogl7qf38y/XHzRnS5x0dXCCEbTe/9v2vRKE8Acmh3sOQ
 PRSA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:content-transfer-encoding
 :in-reply-to;
 bh=lc5UhnoSRIFlDb4bTQaq1FSaNFdyYRNankkKgGtxJsM=;
 b=kYui1xSVV9UzgTXvHmAkbP7/BVkPM5iyUbJJjUAt1SoMGiu/C7byYlTLwccctaPU9e
 4QlTCbDy6wPwG8tuFhYyS0VghyuThG5MNMIr5j7hT193DseXWA4QoQ2E5SXlmBXbfH0M
 hvMECgv5M6Byy9fbWktNB0gAdl89dCh0P8YDGZvkM9jHphpfvuGuuc1FMLuT3KG8i1KK
 Y/79Ec5szJ5ssv3h58R/s/QR0WfQOtToHmk1geWuaXeL/U5B9oiIOMB4SOcMDwbbVg9Z
 SzaFojvvqWWHelDZXvuTyl0AlH38EQyN7KWWV4bGRM6iBNwlaq16MlUzjY8uZF9sWNSN
 H2sQ==
X-Gm-Message-State: AOAM532mUJx6Jtf7lmSXec5t9xcap1f4fbcdtk87onTJwdXqu0styTky
 afsg+Xu2Mp9D8VJRZQIhGCUYGA==
X-Google-Smtp-Source: ABdhPJz5DhYnsCs3A52DCuEOd991w1DHFP+dRXEye2MKbtUEcRSXIjOpqlaA34AoVsAb5kpvszgzgA==
X-Received: by 2002:adf:e588:: with SMTP id l8mr4057736wrm.255.1592475715609; 
 Thu, 18 Jun 2020 03:21:55 -0700 (PDT)
Received: from dell ([95.149.164.118])
 by smtp.gmail.com with ESMTPSA id h188sm3145127wmh.2.2020.06.18.03.21.54
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 18 Jun 2020 03:21:54 -0700 (PDT)
Date: Thu, 18 Jun 2020 11:21:53 +0100
From: Lee Jones <lee.jones@linaro.org>
To: Benjamin Gaignard <benjamin.gaignard@st.com>
Subject: [GIT PULL] Immutable branch between MFD and Clocksource due for the
 v5.9 merge window
Message-ID: <20200618102153.GF954398@dell>
References: <20200603125439.23275-1-benjamin.gaignard@st.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20200603125439.23275-1-benjamin.gaignard@st.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200618_032157_165977_8CE6C579 
X-CRM114-Status: GOOD (  11.32  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:442 listed in]
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
Cc: devicetree@vger.kernel.org, alexandre.torgue@st.com,
 daniel.lezcano@linaro.org, linux@armlinux.org.uk, linux-kernel@vger.kernel.org,
 robh+dt@kernel.org, mcoquelin.stm32@gmail.com, tglx@linutronix.de,
 fabrice.gasnier@st.com, linux-stm32@st-md-mailman.stormreply.com,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

QWxsIGJ1dCB0aGUgQVJNIHBhdGNoZXMsIHdoaWNoIHNob3VsZCBiZSByb3V0ZWQgdmlhIEFybS1T
b0MuCgpFbmpveSEKClRoZSBmb2xsb3dpbmcgY2hhbmdlcyBzaW5jZSBjb21taXQgYjNhOWUzYjk2
MjJhZTEwMDY0ODI2ZGNjYjRmN2E1MmJkODhjNzQwNzoKCiAgTGludXggNS44LXJjMSAoMjAyMC0w
Ni0xNCAxMjo0NTowNCAtMDcwMCkKCmFyZSBhdmFpbGFibGUgaW4gdGhlIEdpdCByZXBvc2l0b3J5
IGF0OgoKICBnaXQ6Ly9naXQua2VybmVsLm9yZy9wdWIvc2NtL2xpbnV4L2tlcm5lbC9naXQvbGVl
L21mZC5naXQgaWItbWZkLWNsb2Nrc291cmNlLXY1LjkKCmZvciB5b3UgdG8gZmV0Y2ggY2hhbmdl
cyB1cCB0byA0OGI0MWM1ZTJkZTZjNTJjOTBlZmE5OWNmYTEyMmE1ZGE3YTdmMGNkOgoKICBjbG9j
a3NvdXJjZTogQWRkIExvdyBQb3dlciBTVE0zMiB0aW1lcnMgZHJpdmVyICgyMDIwLTA2LTE4IDEx
OjE5OjU4ICswMTAwKQoKLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpJbW11dGFibGUgYnJhbmNoIGJldHdlZW4gTUZEIGFuZCBD
bG9ja3NvdXJjZSBkdWUgZm9yIHRoZSB2NS45IG1lcmdlIHdpbmRvdwoKLS0tLS0tLS0tLS0tLS0t
LS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLQpCZW5qYW1p
biBHYWlnbmFyZCAoNCk6CiAgICAgIGR0LWJpbmRpbmdzOiBtZmQ6IERvY3VtZW50IFNUTTMyIGxv
dyBwb3dlciB0aW1lciBiaW5kaW5ncwogICAgICBtZmQ6IHN0bTMyOiBBZGQgZGVmaW5lcyB0byBi
ZSB1c2VkIGZvciBjbGtldmVudCBwdXJwb3NlCiAgICAgIG1mZDogc3RtMzI6IEVuYWJsZSByZWdt
YXAgZmFzdF9pbyBmb3Igc3RtMzItbHB0aW1lcgogICAgICBjbG9ja3NvdXJjZTogQWRkIExvdyBQ
b3dlciBTVE0zMiB0aW1lcnMgZHJpdmVyCgogLi4uL2RldmljZXRyZWUvYmluZGluZ3MvbWZkL3N0
LHN0bTMyLWxwdGltZXIueWFtbCAgfCAgIDUgKwogZHJpdmVycy9jbG9ja3NvdXJjZS9LY29uZmln
ICAgICAgICAgICAgICAgICAgICAgICAgfCAgIDQgKwogZHJpdmVycy9jbG9ja3NvdXJjZS9NYWtl
ZmlsZSAgICAgICAgICAgICAgICAgICAgICAgfCAgIDEgKwogZHJpdmVycy9jbG9ja3NvdXJjZS90
aW1lci1zdG0zMi1scC5jICAgICAgICAgICAgICAgfCAyMjEgKysrKysrKysrKysrKysrKysrKysr
CiBkcml2ZXJzL21mZC9zdG0zMi1scHRpbWVyLmMgICAgICAgICAgICAgICAgICAgICAgICB8ICAg
MSArCiBpbmNsdWRlL2xpbnV4L21mZC9zdG0zMi1scHRpbWVyLmggICAgICAgICAgICAgICAgICB8
ICAgNSArCiA2IGZpbGVzIGNoYW5nZWQsIDIzNyBpbnNlcnRpb25zKCspCiBjcmVhdGUgbW9kZSAx
MDA2NDQgZHJpdmVycy9jbG9ja3NvdXJjZS90aW1lci1zdG0zMi1scC5jCgotLSAKTGVlIEpvbmVz
IFvmnY7nkLzmlq9dClNlbmlvciBUZWNobmljYWwgTGVhZCAtIERldmVsb3BlciBTZXJ2aWNlcwpM
aW5hcm8ub3JnIOKUgiBPcGVuIHNvdXJjZSBzb2Z0d2FyZSBmb3IgQXJtIFNvQ3MKRm9sbG93IExp
bmFybzogRmFjZWJvb2sgfCBUd2l0dGVyIHwgQmxvZwoKX19fX19fX19fX19fX19fX19fX19fX19f
X19fX19fX19fX19fX19fX19fX19fX18KbGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGlu
dXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZyYWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQu
b3JnL21haWxtYW4vbGlzdGluZm8vbGludXgtYXJtLWtlcm5lbAo=
