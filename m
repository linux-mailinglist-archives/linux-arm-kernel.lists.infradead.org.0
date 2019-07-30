Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 94EF37A760
	for <lists+linux-arm-kernel@lfdr.de>; Tue, 30 Jul 2019 13:58:40 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:Cc:
	List-Subscribe:List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	In-Reply-To:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=v30kyzJorY2fm4NbWhdCO02YUgvoqPishBAnDhvHo2k=; b=oZUZGoZXTCCGeQ6KfiZ5bqYTf
	cOmcgod3eCyEIl1PGdy819WT1jwaXIJiiO3wF8rfLlmBLZ31v6+FN25Sl6+NnuuMjsiyX4+Rj9OBK
	rGtpyq1kgzjILK3vGCdeP/J8MYNRjOs18zFQ7seD7Jn+1JJAfhjoUCBR6YtiDDjFkibzdLqlqBJua
	Y3KocthEd5qXcaAzDUsVCCcLbALpENDIUnrUOTdqAJjU+SuqdiJ5+/uCUk5R5k76OASmGcq1/suq6
	eqZggsKGL1e5ladRYtZPOgt/feJOXPLamyX+E08tGCXJNeGY06AeTYdPQEaFLw2819l1GiQI8nPRk
	J28iaFUKA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hsQly-0006Uc-7l; Tue, 30 Jul 2019 11:58:30 +0000
Received: from mail-ed1-x544.google.com ([2a00:1450:4864:20::544])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hsQlg-0006U9-Tf
 for linux-arm-kernel@lists.infradead.org; Tue, 30 Jul 2019 11:58:14 +0000
Received: by mail-ed1-x544.google.com with SMTP id w20so62289721edd.2
 for <linux-arm-kernel@lists.infradead.org>;
 Tue, 30 Jul 2019 04:58:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to:user-agent;
 bh=iOiEct7sDLGxqmV+UPTVkXRXkJ+NL1mETFmJCsflESw=;
 b=tLGZNtXbCFp3mqH0P/RtojF91k9GUpzlWZ54YWSNdlWOq1VyCWPMoEpVEUeryUM1+m
 FaV/pAK9CSKmwlrkDchBo3saRAqAKH0Ba+7qgHAt3ys84gd42y73/y5PcfU1nUDT1QCj
 P0LYqWrQgR/dmDHD/Adh6ja17B6F1vQRx3kHnDexxIuL+lLT2hA9eDJLtP+Hokj0bsVP
 MxqqRdXQQb5AfokymMXITVV+7EMSkrNpMaCxNeC6ag4NXH2waInvfQcent67x8QXunI3
 pTfB5Wd0t2UcnF+SlIQcjR1Bu6ecN7GI1NOSMgFHbIqUIiHSsqCfiiLlisNnM+X+k6Mh
 hTJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=iOiEct7sDLGxqmV+UPTVkXRXkJ+NL1mETFmJCsflESw=;
 b=esCakmLRrjVLUmM9WBUJ76SdXIBSlOiqDm8bch2HN9VilXjcWRPyQya8slg5BXnzme
 UUVsF8lTof7mWrVklFifQMOBdE6EF9BDlEw4N18+N7f3LVYYh7SYfO+oJ/qys8eF0Jv0
 rSf9qaGjDiKDrWdPhkxp8PVnFRKFlHU9QPNFiC5epUQurplqXg20RhH9tPA4MVeLy+Q5
 An/cxlqvpdv6WkHRPQfoan9eG//Z2RDAwFhVMlkDkZq/34YtqXoEvk7FkJIGFCfOjV6+
 l/DqRFsWNqL/rkRaVjzRXDttAiQabTmqmtm7GtG7LYxqvEfWCFroflQzE1tzae5iEbDi
 aOUA==
X-Gm-Message-State: APjAAAXeYNLE9C+ncX62YnVknAfSeumpc+PBeazfk1dIpj3MCXKEqv+g
 GqjSokwxTrio2t63RfQTSlg=
X-Google-Smtp-Source: APXvYqwXt0oyv7/kAzbvdzd0Rvpbd8VKBaS3xGM6Fns+8067a0r4bv+zvz2ApFbhQgJhUVfGYa8VnA==
X-Received: by 2002:a17:906:2510:: with SMTP id
 i16mr21183595ejb.130.1564487890250; 
 Tue, 30 Jul 2019 04:58:10 -0700 (PDT)
Received: from localhost ([193.47.161.132])
 by smtp.gmail.com with ESMTPSA id z9sm16788528edd.53.2019.07.30.04.58.08
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 30 Jul 2019 04:58:09 -0700 (PDT)
Date: Tue, 30 Jul 2019 13:55:58 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: Dong Aisheng <dongas86@gmail.com>
Subject: Re: [PATCH v3 00/11] clk: imx8: add new clock binding for better pm
 support
Message-ID: <20190730115558.GA29350@optiplex>
References: <1563289265-10977-1-git-send-email-aisheng.dong@nxp.com>
 <CAA+hA=TkrwzWbJQu7Cc6njdQSP--u=Zf+=FcPg-wCZ=rRXoRuQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAA+hA=TkrwzWbJQu7Cc6njdQSP--u=Zf+=FcPg-wCZ=rRXoRuQ@mail.gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190730_045813_258950_0B330704 
X-CRM114-Status: UNSURE (   8.86  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:544 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (oliver.graute[at]gmail.com)
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Dong Aisheng <aisheng.dong@nxp.com>,
 devicetree <devicetree@vger.kernel.org>, sboyd@kernel.org,
 Michael Turquette <mturquette@baylibre.com>, Rob Herring <robh+dt@kernel.org>,
 dl-linux-imx <linux-imx@nxp.com>, Sascha Hauer <kernel@pengutronix.de>,
 Fabio Estevam <fabio.estevam@nxp.com>, Shawn Guo <shawnguo@kernel.org>,
 linux-clk <linux-clk@vger.kernel.org>,
 "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE"
 <linux-arm-kernel@lists.infradead.org>
Content-Type: multipart/mixed; boundary="===============0271793678755789137=="
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org


--===============0271793678755789137==
Content-Type: multipart/signed; protocol="application/x-pkcs7-signature";
	micalg=sha-256; boundary="pWyiEgJYm5f9v55/"
Content-Disposition: inline


--pWyiEgJYm5f9v55/
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On 25/07/19, Dong Aisheng wrote:
> Hi Rob & Stephen & Shawn,
>=20
> Could you help review this patchset?
> We're pretty stuck here for a long time and a lot continued work are bloc=
ked.
> We really need your kind help.

I'am also interested in this work and could offer some testing as soon
my imx8qm based board is booting.

Best regards,

Oliver

--pWyiEgJYm5f9v55/
Content-Type: application/x-pkcs7-signature
Content-Disposition: attachment; filename="smime.p7s"
Content-Transfer-Encoding: base64

MIINNwYJKoZIhvcNAQcCoIINKDCCDSQCAQExDzANBglghkgBZQMEAgEFADALBgkqhkiG9w0B
BwGgggp8MIIE6DCCA9CgAwIBAgIOSBtqCRO9gCTKXSLwFPMwDQYJKoZIhvcNAQELBQAwTDEg
MB4GA1UECxMXR2xvYmFsU2lnbiBSb290IENBIC0gUjMxEzARBgNVBAoTCkdsb2JhbFNpZ24x
EzARBgNVBAMTCkdsb2JhbFNpZ24wHhcNMTYwNjE1MDAwMDAwWhcNMjQwNjE1MDAwMDAwWjBd
MQswCQYDVQQGEwJCRTEZMBcGA1UEChMQR2xvYmFsU2lnbiBudi1zYTEzMDEGA1UEAxMqR2xv
YmFsU2lnbiBQZXJzb25hbFNpZ24gMiBDQSAtIFNIQTI1NiAtIEczMIIBIjANBgkqhkiG9w0B
AQEFAAOCAQ8AMIIBCgKCAQEAtpZok2X9LAHsYqMNVL+Ly6RDkaKar7GD8rVtb9nw6tzPFnvX
GeOEA4X5xh9wjx9sScVpGR5wkTg1fgJIXTlrGESmaqXIdPRd9YQ+Yx9xRIIIPu3Jp/bpbiZB
KYDJSbr/2Xago7sb9nnfSyjTSnucUcIPZVChn6hKneVGBI2DT9yyyD3PmCEJmEzA8Y96qT83
JmVH2GaPSSbCw0C+Zj1s/zqtKUbwE5zh8uuZp4vC019QbaIOb8cGlzgvTqGORwK0gwDYpOO6
QQdg5d03WvIHwTunnJdoLrfvqUg2vOlpqJmqR+nH9lHS+bEstsVJtZieU1Pa+3LzfA/4cT7X
A/pnwwIDAQABo4IBtTCCAbEwDgYDVR0PAQH/BAQDAgEGMGoGA1UdJQRjMGEGCCsGAQUFBwMC
BggrBgEFBQcDBAYIKwYBBQUHAwkGCisGAQQBgjcUAgIGCisGAQQBgjcKAwQGCSsGAQQBgjcV
BgYKKwYBBAGCNwoDDAYIKwYBBQUHAwcGCCsGAQUFBwMRMBIGA1UdEwEB/wQIMAYBAf8CAQAw
HQYDVR0OBBYEFGlygmIxZ5VEhXeRgMQENkmdewthMB8GA1UdIwQYMBaAFI/wS3+oLkUkrk1Q
+mOai97i3Ru8MD4GCCsGAQUFBwEBBDIwMDAuBggrBgEFBQcwAYYiaHR0cDovL29jc3AyLmds
b2JhbHNpZ24uY29tL3Jvb3RyMzA2BgNVHR8ELzAtMCugKaAnhiVodHRwOi8vY3JsLmdsb2Jh
bHNpZ24uY29tL3Jvb3QtcjMuY3JsMGcGA1UdIARgMF4wCwYJKwYBBAGgMgEoMAwGCisGAQQB
oDIBKAowQQYJKwYBBAGgMgFfMDQwMgYIKwYBBQUHAgEWJmh0dHBzOi8vd3d3Lmdsb2JhbHNp
Z24uY29tL3JlcG9zaXRvcnkvMA0GCSqGSIb3DQEBCwUAA4IBAQConc0yzHxn4gtQ16VccKNm
4iXv6rS2UzBuhxI3XDPiwihW45O9RZXzWNgVcUzz5IKJFL7+pcxHvesGVII+5r++9eqI9XnE
KCILjHr2DgvjKq5Jmg6bwifybLYbVUoBthnhaFB0WLwSRRhPrt5eGxMw51UmNICi/hSKBKsH
hGFSEaJQALZy4HL0EWduE6ILYAjX6BSXRDtHFeUPddb46f5Hf5rzITGLsn9BIpoOVrgS878O
4JnfUWQi29yBfn75HajifFvPC+uqn+rcVnvrpLgsLOYG/64kWX/FRH8+mhVe+mcSX3xsUpcx
K9q9vLTVtroU/yJUmEC4OcH5dQsbHBqjMIIFjDCCBHSgAwIBAgIMO12UXtvYfwfC8M6yMA0G
CSqGSIb3DQEBCwUAMF0xCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNh
MTMwMQYDVQQDEypHbG9iYWxTaWduIFBlcnNvbmFsU2lnbiAyIENBIC0gU0hBMjU2IC0gRzMw
HhcNMTkwNDAxMTExNjI5WhcNMjIwNDAxMTExNjI5WjCBlTELMAkGA1UEBhMCREUxDzANBgNV
BAgTBkJlcmxpbjEPMA0GA1UEBxMGQmVybGluMRwwGgYDVQQKExNLb0NvIENvbm5lY3RvciBH
bWJIMRYwFAYDVQQDEw1PbGl2ZXIgR3JhdXRlMS4wLAYJKoZIhvcNAQkBFh9vbGl2ZXIuZ3Jh
dXRlQGtvY29jb25uZWN0b3IuY29tMIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA
6tEB11ySFgf4wcRECw6gPEo6N4BJEkUlxp4L6byZO5YtXgJ2jdMudJsTWuu8w0Gk+7QklmOJ
1qU4Ma066KQ+YgCxLuO1gX7FEl2zciiumyfEvC2rTIXX6c6bvxvMPvJhDm1eRMf4aj10/bgN
Hxk9iuNdSVlqYLu0h5QMLW8HmA5PfN+QpfAn+CUhcJT0wec7vRh3FEiO38ySru6Od+AqfuJK
dj45wOvTEBj42QvHqVYcnzcmXW2KkM+8cZBYabs1bLhO3WldwaOh8EZNRZvSvioKyCNKGgUU
vFcDy3l/aGpEqr4zc0sGhVMpTPZpd67/wcTZgW4waDcDvT/kdFJN5QIDAQABo4ICETCCAg0w
DgYDVR0PAQH/BAQDAgWgMIGeBggrBgEFBQcBAQSBkTCBjjBNBggrBgEFBQcwAoZBaHR0cDov
L3NlY3VyZS5nbG9iYWxzaWduLmNvbS9jYWNlcnQvZ3NwZXJzb25hbHNpZ24yc2hhMmczb2Nz
cC5jcnQwPQYIKwYBBQUHMAGGMWh0dHA6Ly9vY3NwMi5nbG9iYWxzaWduLmNvbS9nc3BlcnNv
bmFsc2lnbjJzaGEyZzMwTQYDVR0gBEYwRDBCBgorBgEEAaAyASgKMDQwMgYIKwYBBQUHAgEW
Jmh0dHBzOi8vd3d3Lmdsb2JhbHNpZ24uY29tL3JlcG9zaXRvcnkvMAkGA1UdEwQCMAAwRAYD
VR0fBD0wOzA5oDegNYYzaHR0cDovL2NybC5nbG9iYWxzaWduLmNvbS9nc3BlcnNvbmFsc2ln
bjJzaGEyZzMuY3JsMFsGA1UdEQRUMFKBH29saXZlci5ncmF1dGVAa29jb2Nvbm5lY3Rvci5j
b22gLwYKKwYBBAGCNxQCA6AhDB9vbGl2ZXIuZ3JhdXRlQGtvY29jb25uZWN0b3IuY29tMB0G
A1UdJQQWMBQGCCsGAQUFBwMCBggrBgEFBQcDBDAdBgNVHQ4EFgQU3xRHUdawOpr7j3ksQbT5
tYF66RMwHwYDVR0jBBgwFoAUaXKCYjFnlUSFd5GAxAQ2SZ17C2EwDQYJKoZIhvcNAQELBQAD
ggEBAB/DTqBqTFDUriAbT39gkhoa+uFPWO8NID6UrJ9FqXUpgPzIpkGKf/gv1PKCGVblKY4F
ewgiU3e/ZIAQFIAmwIUPwilkjtBDwHDyBbT68AYLjoS85+8V4ELri7q9fW+w5ldBaCnJ6yiv
B2VMe7Nuu2PO4eI921NG2czrvBggVtYInrQNTAGj+f+JU4nua+YsYq8HkC4FiH4tmHEULFvD
CDQOBeeKqJdn7RsAysG7AwOWwVh8S8FmRGu69RwQbl/PyojiV1w6TUPHm45hj11H1qihrL4X
I9GTHjYv6/Cc6cU1fGVdAmbGK6UrH04yJuJja4YwT3WxU53BWrM6dvdFMksxggJ/MIICewIB
ATBtMF0xCzAJBgNVBAYTAkJFMRkwFwYDVQQKExBHbG9iYWxTaWduIG52LXNhMTMwMQYDVQQD
EypHbG9iYWxTaWduIFBlcnNvbmFsU2lnbiAyIENBIC0gU0hBMjU2IC0gRzMCDDtdlF7b2H8H
wvDOsjANBglghkgBZQMEAgEFAKCB5DAYBgkqhkiG9w0BCQMxCwYJKoZIhvcNAQcBMBwGCSqG
SIb3DQEJBTEPFw0xOTA3MzAxMTU1NThaMC8GCSqGSIb3DQEJBDEiBCAfIM+BNvtnPOzavc3M
Yk3ZCU/IxiHV/BBXaft8DSCM0zB5BgkqhkiG9w0BCQ8xbDBqMAsGCWCGSAFlAwQBKjALBglg
hkgBZQMEARYwCwYJYIZIAWUDBAECMAoGCCqGSIb3DQMHMA4GCCqGSIb3DQMCAgIAgDANBggq
hkiG9w0DAgIBQDAHBgUrDgMCBzANBggqhkiG9w0DAgIBKDANBgkqhkiG9w0BAQEFAASCAQCQ
lRf8YUFcJf0j6/ymZzvKImv22QJooX6foroUlBvQk4irYexFici9L9K9pMt2279kZIzSfQbQ
+7dxVNmjTEacRAE5kvN+MSFf+HZDzBZROCqLAUJSo3hyCY6MADMngzPT46zympyTUS0xhHXO
8ulQlDeenYTxNPHg2l/VSqJr1w6PELOnZyGhTgF3njRcqMLDVDyblMPyeR75USWIXEK2k4us
em46E3XS/2mcVJ9oSkonq1OhyKEP0QqGBfHsw8pLU6GYIEkvcZfOuyGLp0cuL3fr9oGrG8iR
6b/pteEXQDL6Y5m/Lysl/AlxWoQ3DuluFaiZff7ZhD2RU8DyA8wx

--pWyiEgJYm5f9v55/--


--===============0271793678755789137==
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel

--===============0271793678755789137==--

