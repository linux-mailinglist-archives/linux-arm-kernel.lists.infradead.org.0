Return-Path: <linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-arm-kernel@lfdr.de
Delivered-To: lists+linux-arm-kernel@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A059BCE918
	for <lists+linux-arm-kernel@lfdr.de>; Mon,  7 Oct 2019 18:24:44 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Content-Type:
	Content-Transfer-Encoding:Cc:List-Subscribe:List-Help:List-Post:List-Archive:
	List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:Date:Message-ID:From:
	References:To:Subject:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=BHvnfVEyCN77j1okMPnAyVNcvpL6Tc5ANQ7bd0HL3+Y=; b=N5q7m+8DXNPXJrhFaUXj8K/1r
	5LxU9lUoFkSQdrUOgG1kpMKYJT/gsy5Oi/iA2wYzS5yHrzOvoNH7fdNVfGCfJnigSK7Apct/qGWsa
	24o65KzgdWOYCjL3dJZUx1dLVTsH9pbIVCOneK7fqlpP5PYwAfYI2gQm6ZBAq4Rl6XN8483Lm+QPS
	Gq7TPU2x5V6St3DUmhYoxhi6dP3PH3kOzN0ibu2rBB2GK/tziGPtd770KJCuWQvnk9N0sYsClm9kP
	Lv07ROJGHHev/QNpjaIKEDfhZAdMwLhsFz1KJbPmjFRBlD+wlDlr6pYjGVwxD3w4RiqlwFD6yj5Vc
	hf7OmeCkg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHVoG-0002yO-Gz; Mon, 07 Oct 2019 16:24:32 +0000
Received: from mail-wr1-x441.google.com ([2a00:1450:4864:20::441])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iHVo8-0002xS-JG
 for linux-arm-kernel@lists.infradead.org; Mon, 07 Oct 2019 16:24:27 +0000
Received: by mail-wr1-x441.google.com with SMTP id n14so16028081wrw.9
 for <linux-arm-kernel@lists.infradead.org>;
 Mon, 07 Oct 2019 09:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=baylibre-com.20150623.gappssmtp.com; s=20150623;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Dw4Q3iBxabTSuwssTar7XV7AeyC0rgIGm++0r9dtNq4=;
 b=o9h2UfSfMMdaP8yEwRAYjGUQPaT9wNK89isvxEgaAkfRy/5Wnx9JTN9mtLgIrOpIpi
 WaKphTjWSYCnL3K9PDgp7H8H5PU53Aj4aN+s0XW7jhnyCDUG1OkPjNOb8l0NMud8+pB/
 pm3cQC3xNMOvDoXtkWLVuNr/AGdke4jOeXEXVtEWNuPaj1HE/V1hyTVr8drcaZtUxshu
 ZOW79w0q6LUZYTIZn+rox1/s7MTILuhUYWU5ykSoUixrWymGq6acXUC/2SVOWfnU3Yih
 eAv2FQqH9xmgyQQrHCj1TzvRh2fJaZT4WHoIPW20mU4JNeSkDsZnUHgcuDWi1ennPX4s
 bzDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Dw4Q3iBxabTSuwssTar7XV7AeyC0rgIGm++0r9dtNq4=;
 b=QhyYqcFcngOx+3k5fhTIvsUZ1kB6nSw1GTVBArQrlwW/YGTAeMwDnkNbR1RdQXKq2m
 MAUUDf2doihxlNuBSekCGabn2GjaI7TXD/5qsql0WCX1AhfTwBHbcXbDkyk35rsn4ZDm
 0b/6Liizukj5Xng+8WFT6fD8vlNCTFmJsU24BWb/pyBZySQJWdXaEqmK5at/Ts3IDaCb
 tvu1dio8rp6UeXM36+0izQ4HdNqvD+HxHGdWkzESw6CJJc9jIGEsgr/Qwl+nSRECZYYa
 VTETwe0bbF+OW7GPS5K1GbfOxW5f+m6XZW6npXGC2vdc/kmDZ6BKkEq+MX3uDrvRCY5g
 kM1g==
X-Gm-Message-State: APjAAAVsKNJgzsxJW7CI7RPYclv4rM+e/h6YRRlMpkGlZTL8VScOz8I1
 2zHtaJus7+hx084Pc583BD5uqg==
X-Google-Smtp-Source: APXvYqzy3HWKvkWd4yf5lnZVkl2tnDc30Nqy8uFpA3W44ablPXn6tPIdFLvyEWxwoAJsX2qG5SFh4g==
X-Received: by 2002:adf:ec91:: with SMTP id z17mr24462935wrn.346.1570465462487; 
 Mon, 07 Oct 2019 09:24:22 -0700 (PDT)
Received: from [192.168.0.31] (abo-99-183-68.mtp.modulonet.fr. [85.68.183.99])
 by smtp.gmail.com with ESMTPSA id u1sm40608wmc.38.2019.10.07.09.24.21
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 07 Oct 2019 09:24:21 -0700 (PDT)
Subject: Re: [PATCH 0/2] media: meson: vdec: Add compliant H264 support
To: Hans Verkuil <hverkuil@xs4all.nl>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Hans Verkuil <hans.verkuil@cisco.com>
References: <20191007145909.29979-1-mjourdan@baylibre.com>
 <8563127e-fe2c-a633-556b-8a883cebb171@xs4all.nl>
From: Maxime Jourdan <mjourdan@baylibre.com>
Message-ID: <977c48e8-8275-c96a-688b-ccfbb873eb79@baylibre.com>
Date: Mon, 7 Oct 2019 18:24:21 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.8.0
MIME-Version: 1.0
In-Reply-To: <8563127e-fe2c-a633-556b-8a883cebb171@xs4all.nl>
Content-Language: tl
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191007_092424_772616_AC88CFC4 
X-CRM114-Status: GOOD (  19.03  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:441 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: Neil Armstrong <narmstrong@baylibre.com>,
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
 Kevin Hilman <khilman@baylibre.com>, linux-kernel@vger.kernel.org,
 linux-amlogic@lists.infradead.org, Jerome Brunet <jbrunet@baylibre.com>,
 linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset="us-ascii"; Format="flowed"
Sender: "linux-arm-kernel" <linux-arm-kernel-bounces@lists.infradead.org>
Errors-To: linux-arm-kernel-bounces+lists+linux-arm-kernel=lfdr.de@lists.infradead.org

On 07/10/2019 17:12, Hans Verkuil wrote:
> On 10/7/19 4:59 PM, Maxime Jourdan wrote:
>> Hello,
>>
>> This patch series aims to bring H.264 support as well as compliance update
>> to the amlogic stateful video decoder driver.
>>
>> There is 1 issue that remains currently:
>>
>>   - The following codepath had to be commented out from v4l2-compliance as
>> it led to stalling:
>>
>> if (node->codec_mask & STATEFUL_DECODER) {
>> 	struct v4l2_decoder_cmd cmd;
>> 	buffer buf_cap(m2m_q);
>>
>> 	memset(&cmd, 0, sizeof(cmd));
>> 	cmd.cmd = V4L2_DEC_CMD_STOP;
>>
>> 	/* No buffers are queued, call STREAMON, then STOP */
>> 	fail_on_test(node->streamon(q.g_type()));
>> 	fail_on_test(node->streamon(m2m_q.g_type()));
>> 	fail_on_test(doioctl(node, VIDIOC_DECODER_CMD, &cmd));
>>
>> 	fail_on_test(buf_cap.querybuf(node, 0));
>> 	fail_on_test(buf_cap.qbuf(node));
>> 	fail_on_test(buf_cap.dqbuf(node));
>> 	fail_on_test(!(buf_cap.g_flags() & V4L2_BUF_FLAG_LAST));
>> 	for (unsigned p = 0; p < buf_cap.g_num_planes(); p++)
>> 		fail_on_test(buf_cap.g_bytesused(p));
>> 	fail_on_test(node->streamoff(q.g_type()));
>> 	fail_on_test(node->streamoff(m2m_q.g_type()));
>>
>> 	/* Call STREAMON, queue one CAPTURE buffer, then STOP */
>> 	fail_on_test(node->streamon(q.g_type()));
>> 	fail_on_test(node->streamon(m2m_q.g_type()));
>> 	fail_on_test(buf_cap.querybuf(node, 0));
>> 	fail_on_test(buf_cap.qbuf(node));
>> 	fail_on_test(doioctl(node, VIDIOC_DECODER_CMD, &cmd));
>>
>> 	fail_on_test(buf_cap.dqbuf(node));
>> 	fail_on_test(!(buf_cap.g_flags() & V4L2_BUF_FLAG_LAST));
>> 	for (unsigned p = 0; p < buf_cap.g_num_planes(); p++)
>> 		fail_on_test(buf_cap.g_bytesused(p));
>> 	fail_on_test(node->streamoff(q.g_type()));
>> 	fail_on_test(node->streamoff(m2m_q.g_type()));
>> }
>>
>> The reason for this is because the driver has a limitation where all
>> capturebuffers must be queued to the driver before STREAMON is effective.
>> The firmware needs to know in advance what all the buffers are before
>> starting to decode.
>> This limitation is enforced via q->min_buffers_needed.
>> As such, in this compliance codepath, STREAMON is never actually called
>> driver-side and there is a stall on fail_on_test(buf_cap.dqbuf(node));
> 
> That's interesting. I will have to look more closely at this.
> 
>>
>>
>> One last detail: V4L2_FMT_FLAG_DYN_RESOLUTION is currently not recognized
>> by v4l2-compliance, so it was left out for the test. However, it is
>> present in the patch series.
> 
> It is definitely recognized by v4l2-compliance.
> 
>>
>> The second patch has 3 "Alignment should match open parenthesis" lines
>> where I preferred to keep them that way.
>>
>> Thanks Stanimir for sharing your HDR file creation tools, this was very
>> helpful :).
>>
>> Maxime
>>
>> # v4l2-compliance --stream-from-hdr test-25fps.h264.hdr -s250
>> v4l2-compliance SHA: a162244d47d4bb01d0692da879dce5a070f118e7, 64 bits
> 
> But this SHA isn't in the v4l-utils repo, so this makes me wonder where you
> got this repo from.
> 

I am based off the hverkuil/vicodec branch. The SHA I am on is actually 
05387265053bc6f9 ("test-media: add vicodec tests"), but it wasn't 
updated as I found out it requires a new bootstrap to refresh the SHA. 
Maybe some rebasing at some point got rid of a162244d.

I started fresh and ran it again. As you can see, 
V4L2_FMT_FLAG_DYN_RESOLUTION is still problematic (removing it makes all 
the checks pass):

-------------------------------
# v4l2-compliance --stream-from-hdr test-25fps.h264.hdr -s250
v4l2-compliance SHA: 05387265053bc6f9c8c98e112543adb28ae39cfa, 64 bits

Compliance test for meson-vdec device /dev/video0:

Driver Info:
	Driver name      : meson-vdec
	Card type        : Amlogic Video Decoder
	Bus info         : platform:meson-vdec
	Driver version   : 5.4.0
	Capabilities     : 0x84204000
		Video Memory-to-Memory Multiplanar
		Streaming
		Extended Pix Format
		Device Capabilities
	Device Caps      : 0x04204000
		Video Memory-to-Memory Multiplanar
		Streaming
		Extended Pix Format
	Detected Stateful Decoder

Required ioctls:
	test VIDIOC_QUERYCAP: OK

Allow for multiple opens:
	test second /dev/video0 open: OK
	test VIDIOC_QUERYCAP: OK
	test VIDIOC_G/S_PRIORITY: OK
	test for unlimited opens: OK

Debug ioctls:
	test VIDIOC_DBG_G/S_REGISTER: OK (Not Supported)
	test VIDIOC_LOG_STATUS: OK (Not Supported)

Input ioctls:
	test VIDIOC_G/S_TUNER/ENUM_FREQ_BANDS: OK (Not Supported)
	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
	test VIDIOC_S_HW_FREQ_SEEK: OK (Not Supported)
	test VIDIOC_ENUMAUDIO: OK (Not Supported)
	test VIDIOC_G/S/ENUMINPUT: OK (Not Supported)
	test VIDIOC_G/S_AUDIO: OK (Not Supported)
	Inputs: 0 Audio Inputs: 0 Tuners: 0

Output ioctls:
	test VIDIOC_G/S_MODULATOR: OK (Not Supported)
	test VIDIOC_G/S_FREQUENCY: OK (Not Supported)
	test VIDIOC_ENUMAUDOUT: OK (Not Supported)
	test VIDIOC_G/S/ENUMOUTPUT: OK (Not Supported)
	test VIDIOC_G/S_AUDOUT: OK (Not Supported)
	Outputs: 0 Audio Outputs: 0 Modulators: 0

Input/Output configuration ioctls:
	test VIDIOC_ENUM/G/S/QUERY_STD: OK (Not Supported)
	test VIDIOC_ENUM/G/S/QUERY_DV_TIMINGS: OK (Not Supported)
	test VIDIOC_DV_TIMINGS_CAP: OK (Not Supported)
	test VIDIOC_G/S_EDID: OK (Not Supported)

Control ioctls:
	test VIDIOC_QUERY_EXT_CTRL/QUERYMENU: OK
	test VIDIOC_QUERYCTRL: OK
	test VIDIOC_G/S_CTRL: OK
	test VIDIOC_G/S/TRY_EXT_CTRLS: OK
	test VIDIOC_(UN)SUBSCRIBE_EVENT/DQEVENT: OK
	test VIDIOC_G/S_JPEGCOMP: OK (Not Supported)
	Standard Controls: 2 Private Controls: 0

Format ioctls:
		fail: v4l2-test-formats.cpp(263): unknown flag 00000009 returned
	test VIDIOC_ENUM_FMT/FRAMESIZES/FRAMEINTERVALS: FAIL
	test VIDIOC_G/S_PARM: OK (Not Supported)
	test VIDIOC_G_FBUF: OK (Not Supported)
		fail: v4l2-test-formats.cpp(457): pixelformat 34363248 (H264) for 
buftype 10 not reported by ENUM_FMT
	test VIDIOC_G_FMT: FAIL
		fail: v4l2-test-formats.cpp(457): pixelformat 34363248 (H264) for 
buftype 10 not reported by ENUM_FMT
	test VIDIOC_TRY_FMT: FAIL
		fail: v4l2-test-formats.cpp(457): pixelformat 3247504d (MPG2) for 
buftype 10 not reported by ENUM_FMT
	test VIDIOC_S_FMT: FAIL
	test VIDIOC_G_SLICED_VBI_CAP: OK (Not Supported)
	test Cropping: OK (Not Supported)
	test Composing: OK (Not Supported)
	test Scaling: OK

Codec ioctls:
	test VIDIOC_(TRY_)ENCODER_CMD: OK (Not Supported)
	test VIDIOC_G_ENC_INDEX: OK (Not Supported)
	test VIDIOC_(TRY_)DECODER_CMD: OK

Buffer ioctls:
	test VIDIOC_REQBUFS/CREATE_BUFS/QUERYBUF: OK
	test VIDIOC_EXPBUF: OK
	test Requests: OK (Not Supported)

Test input 0:

Streaming ioctls:
	test read/write: OK (Not Supported)
	test blocking wait: OK
	Video Capture Multiplanar: Captured 250 buffers
	test MMAP (select): OK
	Video Capture Multiplanar: Captured 250 buffers
	test MMAP (epoll): OK
	test USERPTR (select): OK (Not Supported)
	test DMABUF: Cannot test, specify --expbuf-device

Total for meson-vdec device /dev/video0: 49, Succeeded: 45, Failed: 4, 
Warnings: 0

-------------------------------

Should I be using another branch than vicodec ?


> Regards,
> 
> 	Hans
> 

_______________________________________________
linux-arm-kernel mailing list
linux-arm-kernel@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
