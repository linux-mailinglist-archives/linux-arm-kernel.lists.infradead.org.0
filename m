Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CC3762ABF7
	for <lists+linux-arm-kernel@lfdr.de>; Sun, 26 May 2019 21:58:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:
	Message-ID:From:References:To:Subject:Reply-To:Content-ID:Content-Description
	:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=gnzXQcYRfKGCl3f8m5AD0BbBtkWbzZ1y626kpSIy508=; b=ZJOFmKCzQ1NBrT
	Yr+sLdT70DuW1EdBgjdwbSBkOBti7XSg4sxpMAUAtd6l5QcuW2gQY7BiWa1nDrivb0de8XGJ0FfeD
	hfLdYRfVZfYdA6hFBRVdx3fXHIn67GAQFbCQM5/9wsl5O91d4jQbw4eEUJM2ge6CL8ySHKWZWk4g2
	VbmS/lc24AaHAr0YEr7q6TcG4f9aTBJkc3XnvWIWPhf9Bnfi8yCgb/9iclNcjuFQ2hygekCvK0yCk
	Lc2lBbaRyzEzQjliyiNGbNUtxh6dyOXgnjqllchSRi7g+GeVYDVyKWZJE3YDgseJg8zLsi1naprOO
	K5G+TtHtkG8jP0AYXu4g==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hUzHp-00078W-Jm; Sun, 26 May 2019 19:58:29 +0000
Received: from mout.gmx.net ([212.227.17.22])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hUzHg-000781-Ve
 for linux-arm-kernel@lists.infradead.org; Sun, 26 May 2019 19:58:22 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=badeba3b8450; t=1558900687;
 bh=am2sDsv9uOcqdQaJtN8eIr6k8922gt0ZSOykwadeZ9E=;
 h=X-UI-Sender-Class:Subject:To:Cc:References:From:Date:In-Reply-To;
 b=hAUG/zA1PqRNYSl6Bu5ifC0UGtcFER2z/GorSmrglbU3yiOdm4+q5zoBOOGE5G8Wk
 28Rm1TxA3txhaBJd0d91h0vVxCXcu0AzhoaVjOGupNpx40N/sF3AmfQDvmcuA2rVTB
 zX57ayEcLG0G0BNf7nLy/016Y1TVx2+Nm3httMpo=
X-UI-Sender-Class: 01bb95c1-4bf8-414a-932a-4f6e2808ef9c
Received: from [192.168.1.166] ([37.4.249.160]) by mail.gmx.com (mrgmx103
 [212.227.17.168]) with ESMTPSA (Nemesis) id 0MXIGf-1hAGwk189l-00WFy9; Sun, 26
 May 2019 21:58:07 +0200
Subject: Re: usb: dwc2: RODATA_FULL_DEFAULT_ENABLED causes kernel oops
To: =?UTF-8?B?QW50dGkgU2VwcMOkbMOk?= <a.seppala@gmail.com>
References: <0ae6261e-96b3-cf8b-d523-a6b8851c951b@gmx.net>
 <CAKv9HNaJg3OB3DrC_aJe0M97dFP9A0_Jew_wFqReHvzDoFF+sg@mail.gmail.com>
From: Stefan Wahren <wahrenst@gmx.net>
Message-ID: <a908bca3-b410-d58f-1011-4f47eca85da4@gmx.net>
Date: Sun, 26 May 2019 21:58:05 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.6.1
MIME-Version: 1.0
In-Reply-To: <CAKv9HNaJg3OB3DrC_aJe0M97dFP9A0_Jew_wFqReHvzDoFF+sg@mail.gmail.com>
Content-Language: en-US
X-Provags-ID: V03:K1:9ix+/bY/JzTOYzR3GDsGCCwWhFWhLO78OhReIP7eZqWBQa7v0rX
 /MF0Qwd2zWX3FjwbaGV9psQMoLLzBGA1gPT856+byeMT/ZEVdYEPCXWT1L1Kud72QAx9K4b
 LiYNdHF1RS8ymnEHTXw+EjrWWkA1EHU7Z84Oz449Sr2ylifugRfmY0o06Z4dUMGaBA/AxsK
 xbNbBWIIC9/DeWgZ8jRZA==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:sp67KIgS0PE=:UPMt4Rk3/vnCz1h5AlWWz4
 tkHQXu/Ngd6DUY4BLVPNhq4sC2bCrQnxM8BZToi+g8TXtA7Yj+XQHB2aKGe51rYVTu1zuABoD
 A7JBbCxCvh/CL6Ni0vE1aQqaLwWRdqGN67d+NaZo/VLVputc7plP5M0IbU4ImjFXRz4sMt3Re
 fpGpjszJ1z5kIhU0bh8349ao/iupSMWz1jBe4P+xa7AZ1BDQ3Ef3DW+qOKL4FSnTH6bnyhIit
 ebOgBtWx0elBBFiRk8sVlh+jPoiQ2KLUJSefwVrgrwlQu1V7Ch161JTBiny6C7lHRTMaXLRre
 zaopkZj6xukEwWF0OAPcJEO2rbx4IHubPLIFShp5zPUbMs0eI518FYansraJLAyx0BsIb9Gbt
 FCsf/wzZv2GeAWdXuXzs61G8qXnkhGem6CZKXQoP5BwAO/7X5sqlrbmbVEvtNb/T5uvFhfy44
 OJfhKAqNu6sTjR6/DTCTlnunByussAsfD2H6JQ11/RuvRpo9ESE16kAIFTMR1yvtzidOQVyh6
 IPJvbl5rVDFHYOF7u2xk69HoT4eobKVGTObWL0erkYEbsd7YkmOPiXo6oDITIXHGSiV8nGrlY
 1NPltx9PNFAbjKcluPGHJRsRghhpyEojrjU4GVPFZ8bk9ENF7ynN8IgwPo5hapoILw2F6BqVI
 D5pZS+tye3QYICScc5liQ9fCkEkFzO2LcJgM3rypTa5ZTaU2OjJ14ahr+vF0B/cam4dmFXrk3
 tjmYMzMuCalVbBM+d9x2BsWiTKG8DhO7sVJBSZ3245vlPhn4L5an/K43rwtj4NZQtzm/VeUyI
 QexPKCbi4NRBPyYt+d4OvWfXNrgxGU3kYaWxeU8jc/LD8XbAPhv42y8TlyG+POiykyftnDgAa
 agOxY+jbetB841j1tPcUuJCyTiwdSZw4msDFmmLcD3jXl9RmX4M55WRzpyshubIVvFYKbX35n
 prDScIqX5pnV0hapEFveFHY5l4xtc60oepND9XAiLaY9fmw4Ypi4i
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190526_125821_360457_EAD27247 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: -0.9 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.9 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.7 RCVD_IN_DNSWL_LOW      RBL: Sender listed at https://www.dnswl.org/,
 low trust [212.227.17.22 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (wahrenst[at]gmx.net)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
X-BeenThere: linux-arm-kernel@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-arm-kernel.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-arm-kernel/>
List-Post: <mailto:linux-arm-kernel@lists.infradead.org>
List-Help: <mailto:linux-arm-kernel-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-arm-kernel>, 
 <mailto:linux-arm-kernel-request@lists.infradead.org?subject=subscribe>
Cc: Artur Petrosyan <Arthur.Petrosyan@synopsys.com>,
 Martin Schiller <ms@dev.tdt.de>, Felipe Balbi <felipe.balbi@linux.intel.com>,
 Ard Biesheuvel <ard.biesheuvel@linaro.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-usb@vger.kernel.org,
 Will Deacon <will.deacon@arm.com>, Minas Harutyunyan <hminas@synopsys.com>,
 linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: base64
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

SGksCgpBbSAyNi4wNS4xOSB1bSAxMjo0NCBzY2hyaWViIEFudHRpIFNlcHDDpGzDpDoKPgo+IEhl
bGxvLgo+Cj4gVGhpcyBpcyBqdXN0IGEgc2hvdCBpbiB0aGUgZGFyayBidXQgaGF2ZSB5b3UgdHJp
ZWQgdG8gYXBwbHkgRE1BIGNhY2hlCj4gYWxpZ25tZW50IGlzc3VlIGZpeCBbMV0gYXMgYSB0aGly
ZCB3b3JrYXJvdW5kIGFsdGVybmF0aXZlPwo+IElmIGl0IGhlbHBzIHRoZSBmaXggc2hvdWxkIGJl
IG1lcmdlZCB1cHN0cmVhbS4KCnllcy4gQWZ0ZXIgYXBwbHlpbmcgTWFydGluJ3MgcGF0Y2gsIGkg
d2Fzbid0IGFibGUgdG8gcmVwcm9kdWNlIHRoaXMKa2VybmVsIG9vcHMuCgpUaGFua3MgdG8gYWxs
Cgo+Cj4gWzFdIC0gaHR0cHM6Ly9wYXRjaHdvcmsua2VybmVsLm9yZy9wYXRjaC8xMDgxNzM3Ny8K
Pgo+IEJyLAoKX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX19fX18K
bGludXgtYXJtLWtlcm5lbCBtYWlsaW5nIGxpc3QKbGludXgtYXJtLWtlcm5lbEBsaXN0cy5pbmZy
YWRlYWQub3JnCmh0dHA6Ly9saXN0cy5pbmZyYWRlYWQub3JnL21haWxtYW4vbGlzdGluZm8vbGlu
dXgtYXJtLWtlcm5lbAo=
